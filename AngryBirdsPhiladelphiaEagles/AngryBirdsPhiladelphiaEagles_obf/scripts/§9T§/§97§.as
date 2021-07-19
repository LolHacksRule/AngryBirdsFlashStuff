package §9T§
{
   import § N§.§1!A§;
   import § N§.§6!O§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§`!9§;
   import §&^§.§[!7§;
   import §&o§.§3I§;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §2G§.§0Z§;
   import §2G§.§>U§;
   import §8z§.Texture;
   import §^]§.§[z§;
   import §`K§.§ L§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §97§
   {
      
      public static const §^#§:int = 0;
      
      public static const §%i§:int = 1;
      
      public static const §[V§:int = 2;
      
      public static const §5!I§:int = 3;
      
      public static const §=!O§:int = 5;
      
      public static const §#!9§:int = 3151368;
      
      protected static const §5B§:int = 8;
      
      protected static const § #§:int = 0;
      
      public static const §]!4§:Number = 46.25;
      
      public static const §]c§:Number = 52.5;
      
      protected static const §2+§:Number = -0.7;
      
      protected static const §if§:Number = 0;
      
      protected static var §6F§:Texture;
      
      public static const §,!J§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^#§ = 0;
            do
            {
               §%i§ = 1;
            }
            while(_loc1_ && §97§);
            
            §[V§ = 2;
            do
            {
               §5!I§ = 3;
               §=!O§ = 5;
            }
            while(_loc1_);
            
            §#!9§ = 3151368;
            while(true)
            {
               §5B§ = 8;
               § #§ = 0;
               §]!4§ = 46.25;
               §]c§ = 52.5;
               §2+§ = -0.7;
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            §if§ = 0;
            if(!(_loc1_ && _loc1_))
            {
               break;
            }
            continue loop2;
         }
      }
      
      public var §;§:§1r§;
      
      public var §]!B§:Number;
      
      public var §5G§:Number;
      
      public var §<;§:Number;
      
      protected var §'u§:Number;
      
      protected var §"!C§:Number;
      
      protected var §3!1§:Number;
      
      protected var §;4§:Number;
      
      public var §?"§:Number;
      
      public var §?A§:Boolean = false;
      
      protected var §&$§:Number;
      
      public var §,N§:Vector.<§>>§>;
      
      public var §4'§:int;
      
      public var §;b§:int;
      
      public var §5!N§:Number;
      
      public var §`5§:Sprite;
      
      public var §=!"§:int = 0;
      
      public var §7!"§:Number = 0;
      
      public var §;9§:Array;
      
      public var §!!<§:Array;
      
      public var mSlingShotState:int;
      
      public var §0!-§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;&§:Boolean = false;
      
      public var §7g§:Number;
      
      protected var §8A§:Sprite;
      
      protected var §>`§:§6!O§;
      
      protected var §&V§:§6!O§;
      
      protected var §9!P§:Sprite;
      
      protected var §&X§:Sprite;
      
      protected var §<w§:Sprite;
      
      protected var §,!§:§1!A§;
      
      protected var §?!J§:§1!A§;
      
      private var §=J§:Number = 0;
      
      private var §8=§:int = 0;
      
      protected var §4!Q§:Number = -0.7;
      
      protected var §2!P§:Number = 0;
      
      public function §97§(param1:§1r§, param2:§[z§, param3:Sprite)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§3I§ = null;
         if(!_loc6_)
         {
            this.§,N§ = new Vector.<§>>§>();
            super();
            this.§;§ = param1;
            loop0:
            while(true)
            {
               this.§8A§ = param3;
               if(!param2)
               {
                  § L§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                  break;
               }
               while(true)
               {
                  this.setPosition(param2.§6!C§,param2.§#2§);
                  addr66:
                  while(true)
                  {
                     addr53:
                     while(true)
                     {
                        this.§2-§();
                     }
                  }
               }
               addr44:
               if(_loc7_ || param2)
               {
                  if(false)
                  {
                     §§goto(addr53);
                  }
                  while(_loc4_ < param2.§ l§)
                  {
                     _loc5_ = param2.§]O§(_loc4_);
                     if(_loc7_ || param1)
                     {
                        this.§[!E§(_loc5_.id,_loc5_.x,_loc5_.y);
                        if(!_loc7_)
                        {
                           continue;
                        }
                     }
                     _loc4_++;
                  }
                  if(_loc7_)
                  {
                     this.§8=§ = this.§,u§();
                     if(_loc7_ || param3)
                     {
                        this.§4'§ = 0;
                        if(this.§,N§.length > 0)
                        {
                           this.§#m§(§^#§);
                           loop10:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§7g§ = 0;
                                 this.§;!O§();
                                 addr174:
                                 addr184:
                                 loop7:
                                 while(true)
                                 {
                                    this.update(0,true);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    addr170:
                                    while(true)
                                    {
                                       this.§,w§();
                                       if(!(_loc7_ || this))
                                       {
                                          continue loop7;
                                       }
                                       if(_loc7_)
                                       {
                                          break loop6;
                                       }
                                       addr211:
                                       while(true)
                                       {
                                          §§push(§ L§);
                                          §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                          if(_loc7_)
                                          {
                                             §§push(this.§]!B§);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_ || param3)
                                                {
                                                   addr249:
                                                   §§push(§§pop() + " ");
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§5G§);
                                                   }
                                                   §§pop().log(§§pop());
                                                   this.§#m§(§5!I§);
                                                   continue loop10;
                                                }
                                                §§goto(addr249);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr249);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       break loop0;
                                    }
                                    continue loop6;
                                    §§goto(addr174);
                                 }
                              }
                              this.§<!P§(0);
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr170);
                  }
                  addr149:
                  return;
               }
            }
            while(true)
            {
               this.§#m§(§5!I§);
               §§goto(addr184);
            }
         }
         while(true)
         {
            _loc4_ = 0;
            if(!(_loc7_ || this))
            {
               continue;
            }
            if(_loc7_ || param2)
            {
               if(!_loc6_)
               {
                  §§goto(addr44);
               }
               §§goto(addr60);
            }
            §§goto(addr66);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§=J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§4'§ < this.§,N§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§,N§.length > 0)
         {
            this.§+L§(0);
         }
         this.§,N§ = null;
         while(true)
         {
            §§push(this.§8A§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§8A§);
                     addr99:
                     while(true)
                     {
                        §§pop().dispose();
                        addr100:
                        while(true)
                        {
                           this.§8A§ = null;
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§`5§ = null;
                  while(_loc1_ || _loc1_)
                  {
                     this.§;9§ = null;
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     if(!(_loc2_ && this))
                     {
                        this.§!!<§ = null;
                        return;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr100);
                  §§goto(addr88);
               }
               continue;
            }
            §§goto(addr99);
         }
      }
      
      public function §^?§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>>§
      {
         var _loc5_:§>>§;
         (_loc5_ = this.§[!E§(param1,param2,param3,param4)).§4b§();
         return _loc5_;
      }
      
      protected function §[!E§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>>§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§>>§ = new §>>§(this,new Sprite(),param1,param2,param3);
         if(!_loc6_)
         {
            if(param4 >= 0)
            {
               this.§,N§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§`5§.addChild(_loc5_.sprite);
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     if(!(_loc6_ && this))
                     {
                        if(!(_loc6_ && param2))
                        {
                           break;
                        }
                        addr91:
                        while(true)
                        {
                           this.§,N§.push(_loc5_);
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr91);
         }
         addr77:
         return _loc5_;
      }
      
      public function §#m§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.mSlingShotState = param1;
            §§push(this.mSlingShotState);
            loop0:
            while(true)
            {
               §§push(§^#§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§=g§();
                     this.§5!N§ = 1000;
                     while(true)
                     {
                        this.mDragging = false;
                        if(_loc3_ && this)
                        {
                           addr54:
                           continue;
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr100:
                           if(!_loc3_)
                           {
                              continue;
                           }
                           addr188:
                           this.§=g§();
                           if(!(_loc3_ && param1))
                           {
                              this.§5!N§ = 2000;
                              continue;
                           }
                           §§goto(addr255);
                        }
                     }
                     addr255:
                     return;
                     addr28:
                  }
                  else
                  {
                     §§push(this.mSlingShotState);
                     loop2:
                     while(true)
                     {
                        §§push(§%i§);
                        loop3:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(this.mSlingShotState);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§[V§);
                                    addr215:
                                    while(!_loc3_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          break loop4;
                                       }
                                       §§push(this.mSlingShotState);
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(§5!I§);
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(this.mSlingShotState);
                                             if(!_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr188);
                                       }
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 addr218:
                                 this.§5!N§ = 10000;
                                 if(!_loc3_)
                                 {
                                    this.§;&§ = false;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr218);
                                    }
                                    this.§=g§();
                                    addr201:
                                    §§goto(addr28);
                                    addr201:
                                 }
                                 §§goto(addr28);
                                 addr238:
                              }
                              break;
                           }
                           continue loop1;
                        }
                     }
                  }
                  this.§=g§();
                  this.§5!N§ = 0;
                  §§goto(addr238);
               }
            }
         }
         §§goto(addr201);
      }
      
      public function get §'k§() : §1r§
      {
         return this.§;§;
      }
      
      public function §7!3§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §5!I§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr43:
                     §§pop();
                     return this.§5!N§ <= 0;
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §2-§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4^§ = this.§[,§();
         var _loc2_:§`!9§ = _loc1_.getFrame(0);
         var _loc3_:§`!9§ = _loc1_.getFrame(1);
         this.§,!§ = new §1!A§(_loc2_.texture);
         §§push(this.§,!§);
         loop0:
         while(true)
         {
            §§push(_loc2_.scale);
            addr247:
            while(true)
            {
               §§pop().scaleX = §§pop();
               continue loop0;
            }
         }
      }
      
      protected function §[,§() : §4^§
      {
         return this.§;§.§<'§.getAnimation("SLINGSHOT");
      }
      
      public function §[!<§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_)
         {
            this.§'u§ = this.§]!B§;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§"!C§ = this.§5G§;
               while(!_loc3_)
               {
                  this.§&$§ = Tuner.§<!M§;
                  if(_loc2_ || _loc1_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            _loc1_ = null;
            return;
         }
      }
      
      protected function §@o§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_ || _loc1_)
         {
            if(!§6F§)
            {
               if(_loc3_)
               {
                  addr30:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc3_)
                  {
                     §6F§ = this.§;§.textureManager.§'b§(_loc2_);
                     addr47:
                     this.§<w§ = new Sprite();
                  }
                  §§goto(addr47);
               }
               var _loc1_:§1!A§ = new §1!A§(§6F§);
               _loc1_.rotation = Math.PI;
               while(true)
               {
                  _loc1_.x = _loc1_.width / 2;
                  loop1:
                  while(true)
                  {
                     _loc1_.y = _loc1_.height / 2;
                     loop2:
                     while(true)
                     {
                        this.§<w§.addChild(_loc1_);
                        while(true)
                        {
                           this.§9!P§ = new Sprite();
                           this.§>`§ = new §6!O§(2,2,§#!9§);
                           this.§9!P§.addChild(this.§>`§);
                           continue loop2;
                           addr109:
                           if(!(_loc4_ && _loc1_))
                           {
                              this.§&X§.addChild(this.§&V§);
                              addr116:
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              loop6:
                              while(true)
                              {
                                 if(_loc4_ && this)
                                 {
                                    while(!_loc4_)
                                    {
                                       this.§&V§ = new §6!O§(2,2,§#!9§);
                                       continue loop6;
                                    }
                                    continue loop2;
                                    addr122:
                                 }
                                 §§goto(addr109);
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            §§goto(addr47);
         }
         §§goto(addr30);
      }
      
      public function §<!P§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§;4§);
         if(!_loc7_)
         {
            §§push(§§pop() / §1r§.§[M§);
            if(_loc6_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§3!1§);
            if(_loc6_)
            {
               §§push(§§pop() / §1r§.§[M§);
               if(_loc6_)
               {
                  addr36:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(3.5);
               if(_loc6_)
               {
                  §§push(8);
                  §§push(this.§&$§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(this.§?"§);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc7_)
                        {
                           addr65:
                           §§push(§§pop() / this.§&$§);
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc6_ || _loc3_)
                        {
                           addr75:
                           §§push(Number(§§pop()));
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_ || this)
                        {
                           §§push(this.§<w§);
                           while(true)
                           {
                              §§push(_loc3_);
                              loop1:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(this.§<w§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr491:
                                    while(_loc6_ || _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr572:
                              this.§0!-§ = false;
                              if(_loc7_)
                              {
                                 §§goto(addr572);
                              }
                              addr549:
                              return;
                              if(_loc7_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(this.§7!"§);
                              if(_loc6_)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§§pop() / (180 / Math.PI));
                                 }
                              }
                              if(_loc7_ && _loc3_)
                              {
                                 §§goto(addr491);
                              }
                              §§pop().rotation = §§pop();
                              addr435:
                              addr437:
                              addr447:
                              addr433:
                              §§push(this.§,!§);
                              §§push(this.§]!B§ / §1r§.§[M§);
                              if(_loc6_ || _loc3_)
                              {
                                 addr446:
                                 §§push(§§pop() - 3);
                              }
                              §§pop().x = §§pop();
                              §§push(this.§,!§);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(this.§5G§);
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§1r§.§[M§);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!_loc7_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(30);
                                                if(_loc7_)
                                                {
                                                   §§goto(addr446);
                                                }
                                                addr428:
                                                §§pop().y = §§pop() - §§pop();
                                                addr380:
                                                §§push(this.§?!J§);
                                                §§push(this.§]!B§);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr379:
                                                   §§push(§§pop() / §1r§.§[M§ - 30);
                                                }
                                                §§pop().x = §§pop();
                                                if(!_loc7_)
                                                {
                                                   §§push(this.§?!J§);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(this.§5G§);
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §§push(§1r§.§[M§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(30);
                                                                     if(!(_loc6_ || _loc2_))
                                                                     {
                                                                        §§goto(addr379);
                                                                     }
                                                                     addr361:
                                                                     §§pop().y = §§pop() - §§pop();
                                                                     addr296:
                                                                     §§push(this.§&X§);
                                                                     §§push(this.§]!B§);
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(§1r§.§[M§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           addr308:
                                                                           while(true)
                                                                           {
                                                                              §§push(17);
                                                                              addr309:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                        addr307:
                                                                     }
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        §§push(this.§&X§);
                                                                        addr245:
                                                                        addr279:
                                                                        addr290:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5G§);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§1r§.§[M§);
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(5);
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          addr272:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§goto(addr272);
                                                                           continue loop13;
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(this.§&X§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr245);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr296);
                                                                           §§goto(addr279);
                                                                        }
                                                                        §§pop().rotation = Math.atan2(_loc2_ - this.§&X§.y,_loc3_ - this.§&X§.x);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr217:
                                                                           this.§9!P§.x = this.§]!B§ / §1r§.§[M§ + 22;
                                                                           addr214:
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9!P§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§5G§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§1r§.§[M§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr191:
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(!(_loc6_ || this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr214);
                                                                                    }
                                                                                    §§goto(addr217);
                                                                                 }
                                                                                 §§goto(addr191);
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           addr218:
                                                                        }
                                                                        §§goto(addr572);
                                                                     }
                                                                     addr362:
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                            }
                                                            §§goto(addr379);
                                                         }
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr380);
                                                }
                                                §§goto(addr538);
                                             }
                                             §§goto(addr435);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr437);
                                    }
                                    §§goto(addr447);
                                 }
                                 §§goto(addr428);
                              }
                              §§goto(addr433);
                           }
                        }
                        §§goto(addr218);
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr75);
            }
            §§goto(addr36);
         }
         §§goto(addr25);
      }
      
      public function §`r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            if(this.§,N§.length <= 0)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§%a§();
               }
               while(!_loc1_)
               {
                  this.§[!E§("BIRD_SARDINE",this.§]!B§,this.§5G§);
                  do
                  {
                     this.§#m§(§[V§);
                  }
                  while(_loc1_ && _loc2_);
                  
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
            }
            else
            {
               this.§+L§(0,true);
            }
         }
      }
      
      protected function §%a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!7§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#m§(§=!O§);
         }
      }
      
      public function §=g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§'u§);
            §§push(this.§"!C§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§&$§);
               if(_loc1_)
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc10_)
         {
            §§push(this.§3!1§ == param1);
            if(this.§3!1§ == param1)
            {
               while(true)
               {
                  §§pop();
                  addr967:
                  while(true)
                  {
                     §§push(this.§;4§ == param2);
                  }
               }
               addr966:
            }
            loop2:
            while(true)
            {
               if(§§pop())
               {
                  §§push(true);
                  break;
               }
               this.§?"§ = Math.sqrt((param2 - this.§"!C§) * (param2 - this.§"!C§) + (param1 - this.§'u§) * (param1 - this.§'u§));
               §§push(this.§?"§);
               loop3:
               while(true)
               {
                  §§push(this.§&$§);
                  loop4:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(param3)
                           {
                              this.§?"§ = Math.sqrt((this.§;4§ - this.§"!C§) * (this.§;4§ - this.§"!C§) + (this.§3!1§ - this.§'u§) * (this.§3!1§ - this.§'u§));
                              §§push(false);
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              §§push(this.§'u§);
                              §§push(this.§&$§);
                              loop7:
                              while(true)
                              {
                                 §§push(param1);
                                 §§push(this.§'u§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop() * (§§pop() - §§pop()) / this.§?"§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       param1 = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§"!C§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§&$§);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(param2);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§"!C§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop() / this.§?"§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop17:
                                                            while(true)
                                                            {
                                                               param2 = Number(§§pop());
                                                               this.§?"§ = this.§&$§;
                                                               while(true)
                                                               {
                                                                  addr233:
                                                                  if(!(_loc10_ || param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  loop63:
                                                                  while(true)
                                                                  {
                                                                     this.§0!-§ = true;
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr48:
                                                                           if(!(_loc9_ && param3))
                                                                           {
                                                                              return true;
                                                                           }
                                                                           loop56:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_ || param3)
                                                                              {
                                                                                 addr605:
                                                                                 if(_loc10_ || param2)
                                                                                 {
                                                                                    this.§;4§ = param2;
                                                                                    loop57:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§?"§);
                                                                                       loop58:
                                                                                       while(!(_loc9_ && param3))
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(this.§&$§);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(0.45);
                                                                                                loop59:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc9_ && param3))
                                                                                                   {
                                                                                                      if(!(_loc9_ && param3))
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop60:
                                                                                                            for(; !_loc9_; if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               continue loop59;
                                                                                                            })
                                                                                                            {
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  §§push(this.§?A§);
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ || param1))
                                                                                                                           {
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc10_ || param3)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr180:
                                                                                                                                 §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(this.§?"§);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                §§push(this.§&$§);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   continue loop60;
                                                                                                                                                }
                                                                                                                                                addr118:
                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr127:
                                                                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop63;
                                                                                                                                                         }
                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                         {
                                                                                                                                                            this.§7l§();
                                                                                                                                                            while(_loc10_ || this)
                                                                                                                                                            {
                                                                                                                                                               this.§?A§ = false;
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop63;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  this.§?A§ = true;
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr233);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        loop83:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc9_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this.§7!"§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-90);
                                                                                                                                                                                       loop77:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                loop76:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr499:
                                                                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         loop71:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr508:
                                                                                                                                                                                                            §§push(§§pop() - _loc6_);
                                                                                                                                                                                                            loop72:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr511:
                                                                                                                                                                                                               §§push(§§pop() + _loc5_);
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                               if(!(_loc9_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop5;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop73:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr525:
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§7!"§);
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(-90);
                                                                                                                                                                                                                                    if(_loc9_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop77;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop76;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr420:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() + _loc5_);
                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop7;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr424:
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop57;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                          §§push(this.§&$§);
                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * (Math.abs(this.§7!"§ - -90 - _loc5_) - _loc4_));
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop72;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr460:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                break loop58;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr681:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                addr682:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / this.§?"§);
                                                                                                                                                                                                                                                   addr685:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      addr686:
                                                                                                                                                                                                                                                      loop47:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         addr687:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            param1 = §§pop();
                                                                                                                                                                                                                                                            addr688:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§"!C§);
                                                                                                                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr630:
                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                  §§push(param2);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§"!C§);
                                                                                                                                                                                                                                                                     addr632:
                                                                                                                                                                                                                                                                     while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                        §§push(this.§?"§);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           addr644:
                                                                                                                                                                                                                                                                           while(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr630:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop47;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  param2 = §§pop();
                                                                                                                                                                                                                                                                  if(_loc9_ && param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  this.§?"§ = _loc7_;
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§3!1§ = param1;
                                                                                                                                                                                                                                                                     continue loop56;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr643);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr486:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                                                                                                                    addr487:
                                                                                                                                                                                                                                    break loop60;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr457:
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr460);
                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr630);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr536:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr966);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop81:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§'u§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                    addr678:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§'u§);
                                                                                                                                                                                                                                       addr680:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr681);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop31:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(4);
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                    addr743:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 while(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                                                                                                                    §§push(this.§&$§);
                                                                                                                                                                                                                                    §§push(2);
                                                                                                                                                                                                                                    loop33:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                                                                                       addr734:
                                                                                                                                                                                                                                       loop34:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§?"§ > _loc7_);
                                                                                                                                                                                                                                             if(this.§?"§ > _loc7_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr719:
                                                                                                                                                                                                                                                if(_loc10_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   §§push(this.§7!"§);
                                                                                                                                                                                                                                                   §§push(-90);
                                                                                                                                                                                                                                                   while(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                                                                      break loop71;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                   addr693:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                                                                   addr778:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + this.§4!Q§);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().§3!1§ = §§pop();
                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + this.§2!P§);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().§;4§ = §§pop();
                                                                                                                                                                                                                                                            break loop56;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr779:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr754:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(12);
                                                                                                                                                                                                                                                         addr756:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                                                                            addr758:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop31;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr719);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr777:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop38:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop39:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   addr702:
                                                                                                                                                                                                                                                   addr546:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr703:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            if(_loc9_ && param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(this.§7!"§);
                                                                                                                                                                                                                                                            §§push(-90);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                                                                               addr664:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + _loc5_);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr669:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr682);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§;4§ = param2;
                                                                                                                                                                                                                                                            this.§7!"§ = Math.atan2(-(this.§;4§ - this.§"!C§),this.§3!1§ - this.§'u§);
                                                                                                                                                                                                                                                            break loop34;
                                                                                                                                                                                                                                                            §§goto(addr703);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr703:
                                                                                                                                                                                                                                                         addr832:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop81;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc10_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               continue loop83;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop73;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr778);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr702);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr697:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                          §§push(this.§7!"§);
                                                                                                                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().§7!"§ = §§pop();
                                                                                                                                                                                                                                          §§goto(addr777);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop29:
                                                                                                                                                                                                                              for(; !_loc9_; §§goto(addr753))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    addr393:
                                                                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                                                                    do
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       param1 = Number(§§pop());
                                                                                                                                                                                                                                       §§push(this.§"!C§);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(!(_loc10_ || param2));
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop71;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc10_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr299:
                                                                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                                                                          §§push(this.§"!C§);
                                                                                                                                                                                                                                          if(_loc10_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr309:
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             if(_loc10_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§?"§);
                                                                                                                                                                                                                                                   break loop59;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr337:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      break loop63;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr697);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr429);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                   §§push(this.§?"§);
                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc9_ && param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                      if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr393);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr685);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr678);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr685);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr680);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr632);
                                                                                                                                                                                                                                             §§goto(addr299);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                                                                          addr361:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr644);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr753:
                                                                                                                                                                                                                              §§goto(addr756);
                                                                                                                                                                                                                              addr672:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§?"§);
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr546);
                                                                                                                                                                                                                                 §§push(§§pop() > _loc7_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr743);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr423);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop77;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr703);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr697);
                                                                                                                                                                                                         §§goto(addr499);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr664);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr693);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr663);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr779);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr758);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr688);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr231:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr967);
                                                                                                                                                            }
                                                                                                                                                            addr226:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr487);
                                                                                                                                                         §§goto(addr127);
                                                                                                                                                      }
                                                                                                                                                      continue loop58;
                                                                                                                                                      addr128:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr420);
                                                                                                                                                }
                                                                                                                                                §§goto(addr386);
                                                                                                                                             }
                                                                                                                                             §§goto(addr337);
                                                                                                                                          }
                                                                                                                                          break loop63;
                                                                                                                                       }
                                                                                                                                       continue loop58;
                                                                                                                                    }
                                                                                                                                    §§goto(addr617);
                                                                                                                                 }
                                                                                                                                 addr181:
                                                                                                                              }
                                                                                                                              §§goto(addr128);
                                                                                                                           }
                                                                                                                           §§goto(addr525);
                                                                                                                        }
                                                                                                                        §§goto(addr546);
                                                                                                                     }
                                                                                                                     §§goto(addr180);
                                                                                                                  }
                                                                                                                  §§goto(addr424);
                                                                                                               }
                                                                                                               §§goto(addr226);
                                                                                                            }
                                                                                                            §§push(param1);
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               §§goto(addr361);
                                                                                                               §§push(this.§'u§);
                                                                                                            }
                                                                                                            §§goto(addr457);
                                                                                                         }
                                                                                                         §§goto(addr508);
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   §§push(0.8);
                                                                                                   break;
                                                                                                   if(!(_loc10_ || param3))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      if(!(_loc9_ && param2))
                                                                                                      {
                                                                                                         §§goto(addr118);
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                                §§goto(addr329);
                                                                                                §§push(§§pop() / §§pop());
                                                                                             }
                                                                                             §§goto(addr511);
                                                                                          }
                                                                                          §§goto(addr687);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ || param2)
                                                                                          {
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                §§goto(addr486);
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             §§goto(addr676);
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                          §§goto(addr460);
                                                                                       }
                                                                                       §§goto(addr630);
                                                                                    }
                                                                                    addr189:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr672);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§7!"§ = -160;
                                                                              §§goto(addr754);
                                                                              §§goto(addr605);
                                                                           }
                                                                        }
                                                                        §§goto(addr231);
                                                                     }
                                                                     §§goto(addr181);
                                                                  }
                                                                  param2 = §§pop();
                                                                  this.§?"§ = _loc8_;
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     this.§3!1§ = param1;
                                                                     this.§;4§ = param2;
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        §§goto(addr189);
                                                                     }
                                                                     addr259:
                                                                     §§goto(addr259);
                                                                  }
                                                                  §§goto(addr536);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        return §§pop();
                     }
                     while(true)
                     {
                        this.§3!1§ = param1;
                        §§goto(addr832);
                     }
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr758);
      }
      
      protected function §7l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §[!7§.playSound("SlingshotStreched");
         }
      }
      
      public function §!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§]!B§);
            §§push(this.§5G§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().setPosition(§§pop(),§§pop());
         }
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_ || param3)
         {
            §§push(§§pop() - this.§]!B§);
            if(!_loc6_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_ || param1)
            {
               this.§]!B§ = param1;
            }
            §§push(param2);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() - this.§5G§);
               if(!_loc6_)
               {
                  addr55:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               this.§5G§ = param2;
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§<;§);
                  if(!(_loc6_ && param3))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§<;§ = §§pop();
                  §§push(this);
                  §§push(this.§"!C§);
                  if(_loc7_ || param3)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§"!C§ = §§pop();
                  §§push(this);
                  §§push(this.§;4§);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§;4§ = §§pop();
                  §§push(this);
                  §§push(this.§'u§);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§'u§ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§3!1§);
                     if(_loc7_ || param3)
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§3!1§ = §§pop();
                     while(true)
                     {
                        if(_loc7_ || param2)
                        {
                           if(param3)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 this.§<!P§(0);
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr55);
         }
         §§goto(addr30);
      }
      
      public function §9M§() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Number = 0;
         var _loc2_:§>>§ = null;
         _loc2_ = this.§,N§[this.§4'§];
         §§push(this.§?"§);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§&$§);
            if(_loc4_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        addr89:
                        §§push(§97§.§]c§);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc4_ || _loc3_)
                           {
                           }
                           §§goto(addr114);
                        }
                        addr107:
                        _loc1_ = §§pop();
                        addr109:
                        §§push(_loc1_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() * _loc3_);
                        }
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(§97§.§]!4§);
                     if(_loc4_)
                     {
                        §§goto(addr107);
                        §§push(Number(§§pop()));
                     }
                  }
                  addr114:
                  return §§pop();
               }
               §§goto(addr89);
            }
         }
         §§goto(addr89);
      }
      
      public function §#I§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>>§ = null;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§,N§.length > this.§4'§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr60:
                  _loc1_ = this.§,N§[this.§4'§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr60);
      }
      
      public function §function§() : Point
      {
         return new Point(this.§'u§,this.§"!C§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>>§ = null;
         this.§'i§(param1);
         loop0:
         while(true)
         {
            if(!this.§0!-§)
            {
               continue;
            }
            while(true)
            {
               this.§<!P§(param1);
               continue loop0;
               addr26:
               this.§'C§(param1,param2);
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               if(false)
               {
                  while(true)
                  {
                     if(this.§5!N§ < 0)
                     {
                        this.§5!N§ = 0;
                     }
                     if(this.mSlingShotState == §5!I§)
                     {
                        break;
                     }
                     §§goto(addr26);
                  }
                  addr333:
                  return;
                  addr39:
               }
               _loc3_ = null;
               if(this.§,N§.length > 0)
               {
                  _loc3_ = this.§,N§[this.§4'§];
               }
               if(_loc3_)
               {
                  if(_loc4_ || param2)
                  {
                     _loc3_.§%!@§(param1);
                     if(_loc4_ || param2)
                     {
                        addr327:
                        if(!_loc3_)
                        {
                           this.§#m§(§5!I§);
                           addr332:
                        }
                        else
                        {
                           addr318:
                           if(this.mSlingShotState != §^#§)
                           {
                              addr283:
                              if(this.mSlingShotState != §%i§)
                              {
                                 §§push(this.mSlingShotState);
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       §§push(§[V§);
                                       if(_loc4_)
                                       {
                                          if(_loc5_ && param1)
                                          {
                                             §§goto(addr318);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             addr217:
                                             if(_loc4_)
                                             {
                                                §§push(_loc3_);
                                                §§push(this.§3!1§);
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(_loc3_.radius);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * Math.cos(this.§7!"§ / (180 / Math.PI)));
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr250:
                                                         §§push(§§pop() - §§pop());
                                                         §§push(this.§;4§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(_loc3_.radius);
                                                            if(_loc4_ || param2)
                                                            {
                                                               §§push(§§pop() * Math.sin(this.§7!"§ / (180 / Math.PI)));
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§pop().setPosition(§§pop(),§§pop());
                                                      §§push(this.§;&§);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc5_ && this)
                                                               {
                                                                  §§goto(addr217);
                                                               }
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(_loc4_ || param2)
                                                                  {
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§?"§);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(this.§&$§);
                                                                              if(_loc4_ || param2)
                                                                              {
                                                                                 addr185:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 §§push(this.§7!"§);
                                                                              }
                                                                              §§pop().§11§(§§pop(),§§pop());
                                                                              addr188:
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    addr192:
                                                                                 }
                                                                                 §§goto(addr333);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr307:
                                                                                 §§goto(addr192);
                                                                              }
                                                                           }
                                                                           §§goto(addr185);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr323:
                                                                           this.§#m§(§%i§);
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                     _loc3_.§!!I§();
                                                                     addr277:
                                                                     §§goto(addr333);
                                                                     addr311:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr286:
                                                                     if(_loc3_.§8!'§)
                                                                     {
                                                                        addr287:
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           this.§#m§(§[V§);
                                                                           §§goto(addr307);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr311);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr287);
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                }
                                                §§goto(addr250);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr333);
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr318);
                                 }
                                 §§goto(addr283);
                              }
                              §§goto(addr286);
                           }
                           if(this.§5!N§ <= 0)
                           {
                              §§goto(addr323);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr333);
                     }
                     §§goto(addr323);
                  }
                  §§goto(addr332);
               }
               §§goto(addr327);
            }
         }
      }
      
      public function §!z§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§>>§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§,N§.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = this.§,N§[this.§4'§];
                  addr61:
                  if(!_loc5_)
                  {
                     if(_loc7_ || this)
                     {
                        return;
                     }
                  }
                  else
                  {
                     _loc5_.setPosition(param1,param2);
                  }
                  do
                  {
                     this.§11§(param3,param4);
                  }
                  while(!_loc7_);
                  
                  addr44:
               }
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr44);
      }
      
      protected function §11§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>>§ = null;
         this.§4!Q§ = §2+§;
         this.§2!P§ = §if§;
         if(this.§,N§.length > 0)
         {
            _loc3_ = this.§,N§[this.§4'§];
         }
         if(!_loc3_)
         {
            if(_loc4_)
            {
               return;
            }
            loop0:
            while(true)
            {
               this.§;§.shootBird(_loc3_,param1,param2);
               do
               {
                  this.§+L§(this.§4'§,_loc3_.§4!9§ > 0);
               }
               while(!_loc4_);
               
               this.§6`§();
               while(this.§4'§ < this.§,N§.length)
               {
                  this.§#m§(§^#§);
                  if(_loc5_)
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     if(_loc4_ || this)
                     {
                        §§goto(addr43);
                     }
                     continue loop0;
                  }
               }
               this.§#m§(§5!I§);
               addr43:
               return;
            }
            addr126:
         }
         else
         {
            this.mDragging = false;
         }
         while(true)
         {
            this.§;&§ = false;
            this.§=J§ = new Date().time;
            §§goto(addr126);
         }
      }
      
      protected function §6`§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!_loc3_)
         {
            §§push(§[!7§);
            §§push("BirdShot");
            if(!_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().playSound(§§pop());
         }
      }
      
      public function §'C§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§4'§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || _loc3_)
            {
               if(§§pop() >= this.§,N§.length)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc6_ && param2)
                  {
                     addr89:
                     if(!_loc5_)
                     {
                        addr106:
                     }
                     _loc4_++;
                     continue;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  addr98:
                  this.§,N§[_loc4_].update(param1,true,param2);
                  §§goto(addr106);
               }
               else
               {
                  addr96:
                  if(this.mSlingShotState == §=!O§)
                  {
                     §§goto(addr98);
                  }
                  else
                  {
                     this.§,N§[_loc4_].update(param1,false,param2);
                     §§goto(addr89);
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr96);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§>>§ = null;
         var _loc2_:* = 0;
         if(_loc6_ || _loc1_)
         {
            this.mDragging = false;
            loop0:
            do
            {
               loop1:
               while(true)
               {
                  this.§=g§();
                  while(this.§;b§ >= this.§,N§.length)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     if(true)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  _loc1_ = this.§,N§[this.§;b§];
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§>U§.§=v§(_loc1_.name).score);
                     if(_loc6_ || this)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(_loc6_ || _loc1_)
                     {
                        addr89:
                        §§push(this.§;§);
                        §§push(_loc2_);
                        §§push(§<!!§.§?l§);
                        §§push(true);
                        §§push(_loc1_.x);
                        §§push(_loc1_.y);
                        if(!_loc5_)
                        {
                           §§push(3);
                           if(!_loc5_)
                           {
                              addr106:
                              §§push(§§pop() - §§pop());
                              §§push(§8R§.§4!§(_loc1_.name));
                           }
                           §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                           if(_loc6_ || this)
                           {
                              _loc1_.§^j§(-1,true);
                              if(_loc6_)
                              {
                                 addr87:
                                 if(false)
                                 {
                                    §§goto(addr89);
                                 }
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§;b§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                                 if(_loc6_ || _loc3_)
                                 {
                                    _loc3_.§;b§ = _loc4_;
                                 }
                              }
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr106);
                     }
                     addr171:
                     return true;
                  }
                  §§goto(addr87);
               }
            }
            while(!_loc6_);
            
         }
         return false;
      }
      
      public function §,u§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>>§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§,N§)
         {
            if(!(_loc5_ && _loc2_))
            {
               §§push(_loc1_);
               if(_loc6_ || this)
               {
                  §§push(int(§§pop() + §>U§.§=v§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §5!,§() : int
      {
         return this.§8=§;
      }
      
      public function §'i§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!(_loc4_ && param1))
         {
            §§push(this.§7g§);
            loop0:
            while(true)
            {
               §§push(0);
               addr187:
               addr26:
               while(§§pop() >= §§pop())
               {
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function §,w§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 1000;
         loop0:
         while(true)
         {
            §§push(this.§;§.objects.§'h§(this.§'u§,this.§<;§));
            while(true)
            {
               §§push(int(§§pop()));
               while(true)
               {
                  _loc2_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop4:
                     while(true)
                     {
                        §§push(-1);
                        addr100:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§!#§(0.1);
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    addr64:
                                    if(§§pop() > 0)
                                    {
                                       break;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          this.§7g§ = -1;
                                          addr101:
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       addr73:
                                    }
                                    while(_loc3_)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          return;
                                       }
                                       §§goto(addr73);
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           §§goto(addr101);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§8A§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr73:
               while(true)
               {
                  §§push(-§§pop());
                  addr74:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.mSlingShotState == §[V§);
            loop0:
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr95:
                     loop4:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!_loc2_)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(true);
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 §§push(false);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr74);
            }
            while(!_loc3_);
            
            return §§pop();
         }
         §§goto(addr95);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.mSlingShotState == §[V§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop();
                     addr65:
                     §§push(this.§?"§);
                     §§push(this.§&$§);
                     if(_loc2_)
                     {
                        §§push(§§pop() * §,!J§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.mDragging = false;
            if(_loc2_)
            {
               this.§#m§(§[V§);
            }
         }
         var _loc1_:§>>§ = this.§,N§[this.§4'§];
         if(!_loc3_)
         {
            _loc1_.§^j§(§0Z§.§5!$§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mDragging = true;
         }
         var _loc1_:§>>§ = this.§,N§[this.§4'§];
         if(_loc2_)
         {
            _loc1_.§^j§(§0Z§.§const§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;&§ = true;
         }
      }
      
      protected function §+L§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>>§ = null;
         if(!(_loc5_ && param1))
         {
            if(param1 < 0)
            {
               if(_loc4_)
               {
                  return;
               }
            }
            if(this.§,N§[param1])
            {
               if(!_loc5_)
               {
                  _loc3_ = this.§,N§[param1];
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§`5§.removeChild(_loc3_.sprite);
                     while(true)
                     {
                        if(param2)
                        {
                           if(_loc4_ || param1)
                           {
                              this.§8!$§(this.§,N§[param1]);
                              addr124:
                              while(true)
                              {
                              }
                              addr124:
                           }
                           §§goto(addr124);
                        }
                        addr87:
                        addr131:
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr136);
            }
            §§goto(addr131);
         }
         addr136:
         while(true)
         {
            _loc3_.dispose();
            while(!(_loc5_ && param2))
            {
               this.§,N§[param1] = null;
               if(_loc4_ || param1)
               {
                  continue loop0;
               }
            }
         }
         this.§,N§.splice(param1,1);
      }
      
      public function §8!$§(param1:§>>§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc10_ || this)
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(this.§;§);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop().particles);
                        if(!(_loc9_ && param1))
                        {
                           §§push(§8R§.§-!'§);
                           if(!_loc9_)
                           {
                              §§push(§5!5§.§-U§);
                              if(!(_loc9_ && _loc2_))
                              {
                                 §§push(§8R§.§`R§);
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§push(param1.x);
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(param1.y);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(_loc10_ || this)
                                          {
                                             §§push(1000);
                                             if(_loc10_)
                                             {
                                                §§push("");
                                                if(_loc10_)
                                                {
                                                   §§push(0);
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                      break;
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * Math.cos(_loc6_));
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * Math.sin(_loc6_));
                                                         }
                                                      }
                                                      §§push(5);
                                                      §§push(_loc2_);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(§§pop() * 20);
                                                      }
                                                      §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                      _loc5_++;
                                                      if(_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      addr283:
                                                      while(true)
                                                      {
                                                         §§push(this.§;§);
                                                         addr152:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().particles);
                                                            addr153:
                                                            while(true)
                                                            {
                                                               §§push(§8R§.§#'§);
                                                               addr155:
                                                               while(true)
                                                               {
                                                                  §§push(§5!5§.§-U§);
                                                                  addr157:
                                                                  while(true)
                                                                  {
                                                                     §§push(§8R§.§`R§);
                                                                     addr159:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.x);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr177:
                                                                              §§push(§§pop() + §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.y);
                                                                                 addr179:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + _loc8_);
                                                                                    addr181:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1500);
                                                                                       addr182:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push("");
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr177:
                                                                           }
                                                                           §§goto(addr179);
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                   addr187:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr187);
                                                }
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr152);
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        §§push(param1.sprite);
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(-§§pop().height * §1r§.§[M§);
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                              if(_loc10_ || _loc2_)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc10_)
                                 {
                                    addr256:
                                    §§push(Math.random() * -_loc8_);
                                    §§push(2);
                                    if(!_loc10_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       addr267:
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc9_)
                                          {
                                             addr277:
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   §§push(param1.sprite);
                                                   addr287:
                                                   while(true)
                                                   {
                                                      §§push(-§§pop().width * §1r§.§[M§);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§push(§§pop());
                                                      addr301:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                      }
                                                   }
                                                }
                                                addr355:
                                             }
                                             while(true)
                                             {
                                                §§push(Math.random() * -_loc7_);
                                                continue loop2;
                                             }
                                          }
                                          addr282:
                                          _loc8_ = §§pop();
                                          §§goto(addr283);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             addr347:
                                             while(true)
                                             {
                                             }
                                             §§goto(addr267);
                                          }
                                          addr346:
                                       }
                                       §§goto(addr355);
                                    }
                                    §§goto(addr301);
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr256);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr282);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr283);
               }
               break;
            }
            §§push(_loc4_);
            if(!(_loc9_ && _loc2_))
            {
               §§goto(addr346);
               §§push(Math.random() * (720 / _loc3_));
            }
            §§goto(addr347);
         }
      }
      
      public function §^I§(param1:§>>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§+L§(this.§,N§.indexOf(param1));
         }
      }
      
      public function §;!O§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§>>§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§>>§ = null;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_)
            {
               if(§§pop() >= this.§,N§.length - 1)
               {
                  addr226:
                  if(this.§`5§.numChildren > 0)
                  {
                     §§push(this.§`5§);
                     if(_loc6_)
                     {
                        §§pop().removeChildAt(0);
                        if(_loc6_ || _loc2_)
                        {
                           §§goto(addr226);
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr226);
                  }
                  if(!_loc7_)
                  {
                     addr233:
                     §§push(0);
                     if(!_loc7_)
                     {
                        break;
                     }
                     addr269:
                     if(§§pop() < this.§,N§.length)
                     {
                        _loc2_ = this.§,N§[_loc1_];
                        if(!_loc7_)
                        {
                           this.§`5§.addChildAt(_loc2_.sprite,0);
                           if(_loc6_)
                           {
                              _loc1_++;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr269);
                        }
                        addr268:
                     }
                  }
                  §§goto(addr273);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§]!B§ - this.§,N§[_loc1_].x) * (this.§]!B§ - this.§,N§[_loc1_].x) + (this.§5G§ - this.§,N§[_loc1_].y) * (this.§5G§ - this.§,N§[_loc1_].y))));
                  if(_loc6_ || _loc2_)
                  {
                     _loc3_ = §§pop();
                     §§push(Number(Math.sqrt((this.§]!B§ - this.§,N§[_loc1_ + 1].x) * (this.§]!B§ - this.§,N§[_loc1_ + 1].x) + (this.§5G§ - this.§,N§[_loc1_ + 1].y) * (this.§5G§ - this.§,N§[_loc1_ + 1].y))));
                     if(_loc6_ || _loc1_)
                     {
                        addr139:
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           _loc4_ = §§pop();
                           addr143:
                           §§push(_loc3_);
                        }
                        if(§§pop() < §§pop())
                        {
                           _loc5_ = this.§,N§[_loc1_];
                           if(_loc6_ || this)
                           {
                              this.§,N§.splice(_loc1_,1);
                              loop1:
                              while(true)
                              {
                                 addr177:
                                 while(true)
                                 {
                                    this.§,N§.splice(_loc1_ + 1,0,_loc5_);
                                    addr186:
                                    while(_loc6_)
                                    {
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc1_ = int(Math.max(-1,_loc1_ - 2));
                              if(_loc6_ || _loc1_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr186);
                           }
                        }
                        continue;
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr139);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!_loc7_)
         {
            §§goto(addr268);
         }
         addr273:
      }
      
      public function §9B§(param1:Number, param2:Number) : §>>§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§,N§.length)
            {
               if(!_loc5_)
               {
                  if(_loc4_ || this)
                  {
                     return null;
                  }
                  addr70:
                  if(this.§,N§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr58:
                        while(true)
                        {
                           _loc3_++;
                        }
                     }
                     addr85:
                  }
                  §§goto(addr58);
               }
               while(!_loc4_)
               {
                  §§goto(addr85);
               }
               continue;
            }
            if(this.§,N§[_loc3_])
            {
               §§goto(addr70);
            }
            §§goto(addr58);
         }
         return this.§,N§[_loc3_];
      }
      
      public function §]!@§(param1:Number, param2:Number) : §97§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§]!B§);
               loop1:
               while(true)
               {
                  §§push(this.§&$§);
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
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param1);
                                             loop10:
                                             while(!_loc3_)
                                             {
                                                §§push(this.§]!B§);
                                                §§push(this.§&$§);
                                                loop11:
                                                for(; !(_loc3_ && param2); addr120:,if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              break loop20;
                                                                           }
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§5G§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              addr74:
                                                                              addr74:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§5G§);
                                                                                 if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(this.§&$§);
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    if(_loc4_ || param2)
                                                                                    {
                                                                                       §§goto(addr109);
                                                                                    }
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 §§goto(addr120);
                                                                                 continue loop24;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           addr57:
                                                                           if(!(_loc4_ || param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr64:
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              §§goto(addr20);
                                                                           }
                                                                           addr206:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr74);
                                                                              §§goto(addr64);
                                                                           }
                                                                        }
                                                                        addr156:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        break loop21;
                                                                     }
                                                                     addr201:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           return this;
                                                                        }
                                                                        §§goto(addr57);
                                                                     }
                                                                     addr20:
                                                                     return null;
                                                                     addr51:
                                                                  }
                                                                  §§goto(addr156);
                                                               }
                                                               break;
                                                            }
                                                            while(_loc4_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr206);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr143);
                                                               }
                                                            }
                                                            addr143:
                                                            continue loop7;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop9;
                                                })
                                                {
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(4);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr198:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr199:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                         }
                                                      }
                                                      addr109:
                                                      §§push(4);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            continue loop11;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr201);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      public function §+?§(param1:§[z§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§>>§ = null;
         var _loc4_:§3I§ = null;
         if(!(_loc5_ && param1))
         {
            param1.§6!C§ = this.§]!B§;
            if(!(_loc5_ && param1))
            {
               addr41:
               param1.§#2§ = this.§5G§;
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§,N§.length)
            {
               _loc3_ = this.§,N§[_loc2_];
               (_loc4_ = new §3I§()).x = _loc3_.x;
               if(_loc6_ || _loc3_)
               {
                  _loc4_.y = _loc3_.y;
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                  }
                  addr144:
               }
               loop2:
               while(true)
               {
                  addr127:
                  while(true)
                  {
                     param1.§[`§(_loc4_);
                     while(!_loc5_)
                     {
                        §§push(_loc2_);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop() + 1);
                           if(_loc6_ || this)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           continue loop2;
                        }
                     }
                     §§goto(addr144);
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §7!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§,N§.length > 0)
         {
            this.§^I§(this.§,N§[0]);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function §6E§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               if(§§pop() < this.§,N§.length)
               {
                  if(this.§,N§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr171);
                  }
                  break;
               }
               if(_loc5_)
               {
                  §§push(this.§]!B§ > param1.x);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              §§push(this.§]!B§);
                              loop5:
                              while(_loc5_ || this)
                              {
                                 §§push(§§pop() < param2.x);
                                 addr118:
                                 §§pop();
                                 §§push(this.§5G§);
                                 if(_loc5_)
                                 {
                                    addr69:
                                    §§push(§§pop() > param1.y);
                                    loop8:
                                    do
                                    {
                                       §§push(§§pop());
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      continue;
                                                   }
                                                   continue loop4;
                                                }
                                                addr149:
                                                _loc4_ = §§pop() + 1;
                                                addr152:
                                                if(_loc6_)
                                                {
                                                   _loc3_.push(this.§,N§[_loc4_]);
                                                }
                                                else
                                                {
                                                   addr177:
                                                   addr171:
                                                }
                                                continue loop0;
                                                break loop1;
                                             }
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       addr115:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr118);
                                          }
                                          §§goto(addr69);
                                          continue loop8;
                                       }
                                       continue loop5;
                                    }
                                    while(!(_loc5_ || param2));
                                    
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             _loc3_.push(this);
                                          }
                                          else
                                          {
                                             §§goto(addr152);
                                          }
                                       }
                                    }
                                    return _loc3_;
                                 }
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr115);
                        }
                     }
                  }
               }
               §§goto(addr177);
               §§goto(addr177);
            }
            while(true)
            {
               §§goto(addr149);
               §§goto(addr177);
            }
         }
      }
      
      public function §^!I§() : Array
      {
         return [this.§?!J§,this.§,!§];
      }
      
      public function §@!!§(param1:String, param2:Number, param3:Number) : §>>§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>>§ = this.§[!E§(param1,param2,param3);
         if(_loc6_ || param3)
         {
            this.§;!O§();
         }
         return _loc4_;
      }
      
      public function §=V§() : Number
      {
         return this.§,N§.length;
      }
   }
}
