package §8!K§
{
   import §&v§.§#!R§;
   import §&v§.§9B§;
   import §+!!§.§5"+§;
   import §?s§.§%!%§;
   import §?s§.§8K§;
   import §?s§.§^!n§;
   import flash.geom.Point;
   
   public class §5!0§
   {
      
      public static const §`<§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`<§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      protected var §0!u§:Number = 0;
      
      protected var §%k§:Number = -8;
      
      protected var §!#§:Number = 0.0;
      
      protected var §2!z§:Vector.<§8K§> = null;
      
      protected var §06§:Vector.<§^!n§> = null;
      
      protected var §+!y§:Vector.<§%!%§> = null;
      
      protected var §9! §:Vector.<§1!R§> = null;
      
      public var §8!i§:Number = 0;
      
      public var §%""§:Boolean = false;
      
      protected var §5![§:int = 0;
      
      protected var §91§:int = 0;
      
      protected var §8!z§:int = 0;
      
      protected var §^",§:String = null;
      
      protected var mName:String = null;
      
      public function §5!0§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§9! § = new Vector.<§1!R§>();
               while(true)
               {
                  this.§2!z§ = new Vector.<§8K§>();
                  addr92:
                  while(true)
                  {
                     this.§06§ = new Vector.<§^!n§>();
                     continue loop0;
                  }
                  addr44:
                  if(_loc2_ || _loc1_)
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public static function §6k§(param1:String) : §5!0§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5!0§ = new §5!0§();
         if(_loc3_ || _loc2_)
         {
            _loc2_.§[U§(param1);
         }
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§9B§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1.healthMax == -1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(true);
                              break;
                           }
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 addr25:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!(_loc3_ || param1))
                                    {
                                       break loop5;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                    addr91:
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                 }
                              }
                              addr73:
                           }
                           while(true)
                           {
                              §§push(param1.score > 0);
                              continue loop0;
                           }
                        }
                        §§goto(addr25);
                     }
                     return §§pop();
                     addr65:
                  }
                  §§goto(addr91);
               }
               return §§pop();
            }
         }
         §§goto(addr73);
      }
      
      public static function §'!&§(param1:String) : §5!0§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§5!0§ = §6k§(param1);
         if(_loc4_)
         {
            _loc2_.§0!u§ = _loc2_.§06§[0].x;
            if(_loc4_ || param1)
            {
               _loc2_.§%k§ = _loc2_.§06§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || _loc2_)
            {
               if(!_loc5_)
               {
                  if(§§pop() >= _loc2_.§2!z§.length)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(_loc5_ && §5!0§)
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  _loc2_.§2!z§[_loc3_].angle = _loc2_.§2!z§[_loc3_].angle;
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr97);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr97);
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§2!z§.length;
      }
      
      public function get §use§() : int
      {
         return this.§+!y§.length;
      }
      
      public function get §1t§() : int
      {
         return this.§06§.length;
      }
      
      public function get §^!U§() : int
      {
         return this.§9! §.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§91§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§91§ = param1;
         }
      }
      
      public function get scoreSilver() : int
      {
         return this.§8!z§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8!z§ = param1;
         }
      }
      
      public function get slingshotX() : Number
      {
         return this.§0!u§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!u§ = param1;
         }
      }
      
      public function get slingshotY() : Number
      {
         return this.§%k§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%k§ = param1;
         }
      }
      
      public function get §6C§() : Number
      {
         return this.§!#§;
      }
      
      public function set §6C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§!#§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mName = param1;
         }
      }
      
      public function get §0!E§() : Boolean
      {
         return true;
      }
      
      public function get §2!@§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§^",§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^",§ = param1;
         }
      }
      
      public function getEagleScore(param1:§#!R§, param2:int) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§&!2§(param1,param2));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§8!q§());
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc7_ || this)
         {
            §§push(_loc4_);
            if(!(_loc6_ && _loc3_))
            {
               addr54:
               §§push(int(§§pop() + §§pop()));
               §§push(int(§§pop() + §§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               §§push(0);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() > §§pop());
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr166);
                  }
                  addr73:
                  §§pop();
                  if(_loc7_)
                  {
                     §§push(_loc5_);
                     if(_loc7_ || _loc3_)
                     {
                        addr163:
                        §§push(this.§5![§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() < §§pop());
                           addr166:
                           loop0:
                           while(!§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this.§5![§);
                                 if(!_loc6_)
                                 {
                                    §§push(0);
                                    if(_loc6_ && this)
                                    {
                                       continue loop3;
                                    }
                                    while(§§pop() == §§pop())
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§goto(addr129);
                                          }
                                          break loop0;
                                       }
                                       if(_loc7_ || param1)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    §§push(this.§5![§);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr129);
                              }
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr168);
                  }
                  addr129:
                  §§push(_loc5_);
                  if(!(_loc6_ && param2))
                  {
                     return §§pop();
                  }
                  addr168:
                  return §§pop();
               }
               §§goto(addr113);
            }
            §§goto(addr163);
         }
         §§goto(addr54);
      }
      
      public function §]!]§(param1:int, param2:§#!R§, param3:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(this.§&!2§(param2,param3));
         if(_loc7_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§8!q§());
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_);
         if(!_loc8_)
         {
            §§push(int(§§pop() + _loc5_));
         }
         var _loc6_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc4_);
            loop0:
            while(true)
            {
               §§push(0);
               addr116:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc7_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           addr103:
                           if(_loc7_ || this)
                           {
                              return;
                           }
                           §§push(§§pop() < §§pop());
                           continue loop0;
                           if(_loc7_ || param3)
                           {
                              continue;
                           }
                           addr121:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr121:
                        }
                        this.§5![§ = param1;
                        if(!_loc7_)
                        {
                           §§goto(addr103);
                        }
                        return;
                        addr91:
                     }
                  }
                  §§goto(addr121);
               }
            }
            addr115:
         }
         while(true)
         {
            §§push(_loc6_);
            if(_loc7_ || param3)
            {
               §§push(param1);
               if(!(_loc8_ && param2))
               {
                  §§goto(addr83);
               }
               else
               {
                  §§goto(addr116);
               }
            }
            else
            {
               §§goto(addr115);
            }
            §§goto(addr116);
            §§goto(addr121);
         }
      }
      
      public function §[U§(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§1!R§ = null;
         var _loc5_:Object = null;
         var _loc6_:§^!n§ = null;
         var _loc7_:Object = null;
         var _loc8_:§8K§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc10_ && param1))
         {
            this.§8!i§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§%""§ = false;
               loop1:
               while(true)
               {
                  this.§8!z§ = _loc2_.scoreSilver;
                  while(true)
                  {
                     this.§91§ = _loc2_.scoreGold;
                     continue loop1;
                     loop7:
                     for(; !(_loc10_ && param1); if(!(_loc9_ || this))
                     {
                        continue;
                     },§§goto(addr78))
                     {
                        this.§+!y§ = this.§`v§(_loc2_.counts.joints,_loc2_.world);
                        loop8:
                        for(; _loc9_ || this; if(_loc9_ || param1)
                        {
                           continue loop7;
                        })
                        {
                           addr122:
                           if(!(_loc10_ && _loc3_))
                           {
                              while(true)
                              {
                                 this.§9! § = new Vector.<§1!R§>();
                                 loop10:
                                 while(true)
                                 {
                                    addr55:
                                    while(true)
                                    {
                                       this.§06§ = new Vector.<§^!n§>();
                                       addr62:
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop10;
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                              addr86:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§^",§ = _loc2_.theme;
                                 addr141:
                                 while(_loc9_ || _loc3_)
                                 {
                                    continue loop0;
                                    if(_loc10_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       this.§2!z§ = new Vector.<§8K§>();
                                       if(!_loc10_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr55);
                                       }
                                       §§goto(addr62);
                                    }
                                    var _loc3_:* = Number(0);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc9_)
                                       {
                                          if(§§pop() >= _loc2_.camera.length)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(1);
                                                if(_loc9_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc9_ || param1)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc9_)
                                                      {
                                                         addr447:
                                                         §§push(_loc3_);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            addr455:
                                                            if(§§pop() <= _loc2_.counts.birds)
                                                            {
                                                               _loc5_ = _loc2_.world["bird_" + _loc3_];
                                                               (_loc6_ = new §^!n§()).x = _loc5_.x;
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  _loc6_.y = _loc5_.y;
                                                                  _loc6_.type = _loc5_.id;
                                                                  §§push(_loc6_);
                                                                  §§push(_loc3_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  §§pop().index = §§pop();
                                                                  addr428:
                                                                  addr446:
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     addr413:
                                                                     this.§06§.push(_loc6_);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              addr400:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr413);
                                                                                 }
                                                                                 §§goto(addr447);
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                           §§goto(addr413);
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                     §§goto(addr446);
                                                                     addr435:
                                                                  }
                                                                  addr441:
                                                                  §§goto(addr441);
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr467:
                                                               §§push(Number(1));
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               addr609:
                                                               if(§§pop() <= _loc2_.counts.blocks)
                                                               {
                                                                  _loc7_ = _loc2_.world["block_" + _loc3_];
                                                                  (_loc8_ = new §8K§()).x = _loc7_.x;
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     _loc8_.y = _loc7_.y;
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        _loc8_.type = _loc7_.id;
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           §§push(_loc3_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           §§pop().id = §§pop();
                                                                           loop27:
                                                                           while(_loc9_)
                                                                           {
                                                                              if(_loc7_.front)
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_.front = _loc7_.front;
                                                                                    }
                                                                                    addr582:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr586:
                                                                              }
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 _loc8_.angle = _loc7_.angle;
                                                                                 loop30:
                                                                                 while(!_loc10_)
                                                                                 {
                                                                                    if(_loc8_.type != null)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2!z§.push(_loc8_);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      addr516:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr516);
                                                                                             }
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop29;
                                                                                          }
                                                                                          if(!(_loc9_ || _loc3_))
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          §§goto(addr531);
                                                                                          continue loop30;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr609);
                                                                                       }
                                                                                       addr613:
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          this.§0!u§ = _loc2_.slingshotX;
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr631:
                                                                                             this.§%k§ = _loc2_.slingshotY;
                                                                                          }
                                                                                          §§goto(addr635);
                                                                                       }
                                                                                       addr635:
                                                                                       return;
                                                                                       addr531:
                                                                                       addr608:
                                                                                    }
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       throw new Error("Item type can\'t be null.");
                                                                                    }
                                                                                    continue loop27;
                                                                                 }
                                                                                 continue loop25;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr582);
                                                               }
                                                               §§goto(addr613);
                                                            }
                                                            §§goto(addr631);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr631);
                                                   }
                                                   §§goto(addr455);
                                                }
                                                §§goto(addr467);
                                             }
                                             addr478:
                                             §§goto(addr608);
                                          }
                                          else
                                          {
                                             (_loc4_ = new §1!R§()).x = _loc2_.camera[_loc3_].x;
                                             if(_loc9_ || param1)
                                             {
                                                _loc4_.y = _loc2_.camera[_loc3_].y;
                                                loop15:
                                                while(true)
                                                {
                                                   _loc4_.left = _loc2_.camera[_loc3_].left;
                                                   addr310:
                                                   while(true)
                                                   {
                                                      _loc4_.right = _loc2_.camera[_loc3_].right;
                                                      continue loop15;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc4_.top = _loc2_.camera[_loc3_].top;
                                                loop19:
                                                for(; !_loc10_; loop21:
                                                while(_loc9_ || _loc2_)
                                                {
                                                   do
                                                   {
                                                      this.§9! §.push(_loc4_);
                                                      while(true)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  addr227:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc3_ = §§pop();
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr274);
                                                         }
                                                      }
                                                      if(!(_loc9_ || this))
                                                      {
                                                         continue loop21;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr294);
                                                      continue loop21;
                                                   }
                                                   while(false);
                                                   
                                                   continue loop14;
                                                })
                                                {
                                                   _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                                   while(true)
                                                   {
                                                      _loc4_.id = _loc2_.camera[_loc3_].id;
                                                      continue loop19;
                                                   }
                                                }
                                                §§goto(addr310);
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§goto(addr478);
                                    }
                                    §§goto(addr631);
                                 }
                                 continue loop1;
                                 §§goto(addr122);
                              }
                              addr161:
                           }
                        }
                        while(true)
                        {
                           if(_loc2_.counts.joints)
                           {
                              continue loop7;
                           }
                           §§goto(addr86);
                           §§goto(addr115);
                        }
                        addr115:
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §1!I§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_)
         {
            _loc1_.LevelExtension = this.§8!i§;
            loop0:
            while(true)
            {
               _loc1_.scoreSilver = this.§8!z§;
               while(true)
               {
                  _loc1_.scoreGold = this.§91§;
                  while(_loc4_)
                  {
                     _loc1_.scoreEagle = this.§5![§;
                     loop3:
                     while(true)
                     {
                        _loc1_.theme = this.§^",§;
                        loop4:
                        while(true)
                        {
                           addr49:
                           while(true)
                           {
                              _loc1_.name = this.mName;
                              while(_loc4_)
                              {
                                 _loc1_.camera = this.§9! §;
                                 if(_loc4_)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  while(false)
                  {
                     §§goto(addr49);
                  }
                  var _loc2_:* = Number(0);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.world = new Object();
                     do
                     {
                        _loc2_ = Number(0);
                     }
                     while(!(_loc4_ || _loc1_));
                     
                  }
                  loop9:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop10:
                     while(true)
                     {
                        if(§§pop() >= this.§06§.length)
                        {
                           loop11:
                           while(true)
                           {
                              §§push(0);
                              loop12:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop13:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop16:
                                          while(true)
                                          {
                                             if(§§pop() >= this.§2!z§.length)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   if(!(_loc4_ || _loc1_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   loop18:
                                                   for(; !(_loc3_ && _loc3_); if(!(_loc4_ || _loc1_))
                                                   {
                                                      continue;
                                                   },if(_loc4_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      §§goto(addr255);
                                                   },§§goto(addr312))
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop19:
                                                      for(; _loc4_; if(_loc3_ && _loc1_)
                                                      {
                                                         continue;
                                                      },_loc1_.counts.joints = this.§+!y§.length,§§goto(addr138))
                                                      {
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc3_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop() >= this.§+!y§.length)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     break;
                                                                     addr371:
                                                                  }
                                                                  _loc1_.counts = new Object();
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     _loc1_.counts.blocks = this.§2!z§.length;
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           addr255:
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           _loc1_.counts.birds = this.§06§.length;
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              continue loop23;
                                                                              addr138:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc3_ && this)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr339:
                                                                                       }
                                                                                       if(!(_loc4_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc1_.slingshotX = this.§0!u§;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!(_loc4_ || _loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop14;
                                                                                       break loop18;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 continue loop24;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                     addr312:
                                                                     break loop20;
                                                                  }
                                                               }
                                                               addr354:
                                                               _loc2_ = Number(§§pop() + 1);
                                                               addr352:
                                                               break loop19;
                                                            }
                                                            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§+!y§[_loc2_];
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            if(!(_loc4_ || _loc3_))
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§push(§§pop() + 1);
                                                            if(!_loc4_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               continue loop18;
                                                            }
                                                            §§goto(addr352);
                                                         }
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            continue loop15;
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      continue loop9;
                                                   }
                                                   if(!(_loc4_ || _loc1_))
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr312);
                                                      §§push(§§pop() + 1);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                continue loop12;
                                             }
                                             _loc1_.world["block_" + (_loc2_ + 1)] = this.§2!z§[_loc2_];
                                             §§goto(addr339);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc1_.world["bird_" + (_loc2_ + 1)] = this.§06§[_loc2_];
                        }
                        §§goto(addr371);
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §6z§() : String
      {
         return JSON.stringify(this.§1!I§());
      }
      
      protected function §`v§(param1:int, param2:Object) : Vector.<§%!%§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§%!%§ = null;
         var _loc3_:Vector.<§%!%§> = new Vector.<§%!%§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc9_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(!(_loc9_ && _loc3_))
               {
                  §§push(_loc5_.type == §%!%§.§!!C§);
                  if(!_loc9_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc9_)
                        {
                           addr88:
                           §§pop();
                           addr102:
                           if(_loc10_ || param1)
                           {
                              §§push(_loc5_.type == §%!%§.§^§);
                           }
                           _loc8_ = new §%!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                           if(!_loc9_)
                           {
                              if(_loc5_.type == §%!%§.§^§)
                              {
                                 if(!_loc9_)
                                 {
                                    _loc8_.axisX = _loc5_.axisX;
                                    if(_loc10_)
                                    {
                                       _loc8_.axisY = _loc5_.axisY;
                                       if(_loc10_)
                                       {
                                          addr193:
                                          if(_loc5_.type == §%!%§.§`!b§)
                                          {
                                             if(!_loc9_)
                                             {
                                                addr200:
                                                _loc8_.§03§ = _loc5_.destroyTimer;
                                                if(_loc10_ || param2)
                                                {
                                                }
                                                addr224:
                                                _loc4_++;
                                                continue;
                                             }
                                             §§goto(addr224);
                                          }
                                          _loc3_.push(_loc8_);
                                          §§goto(addr224);
                                          addr167:
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr200);
                              }
                           }
                           §§goto(addr167);
                        }
                     }
                     if(§§pop())
                     {
                        §§goto(addr102);
                     }
                     else
                     {
                        _loc8_ = new §%!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
                     }
                     §§goto(addr193);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr200);
         }
         return _loc3_;
      }
      
      public function §&!2§(param1:§#!R§, param2:int) : int
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§8K§ = null;
         var _loc5_:* = null;
         var _loc6_:§9B§ = null;
         if(_loc9_)
         {
            if(!param1)
            {
               if(_loc9_ || _loc3_)
               {
                  §§push(0);
                  if(!_loc10_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr40:
                  §§push(0);
               }
               var _loc3_:* = §§pop();
               for each(_loc4_ in this.§2!z§)
               {
                  §§push(_loc4_.type);
                  if(!(_loc10_ && param2))
                  {
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  §§push((_loc6_ = param1.§"!?§(_loc5_)) == null);
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           §§pop();
                           if(!_loc10_)
                           {
                              §§push(_loc5_);
                              if(_loc9_ || param2)
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(!_loc10_)
                                 {
                                    addr97:
                                    if(§§pop())
                                    {
                                       if(_loc10_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       addr121:
                                       _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
                                       if(!_loc10_)
                                       {
                                          _loc6_ = param1.§"!?§(_loc5_);
                                          addr129:
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc10_ && this))
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(this.§8y§(param1,_loc5_,param2));
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!_loc10_)
                                                      {
                                                         addr164:
                                                         _loc3_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            continue;
                                                         }
                                                         addr167:
                                                         §§push(_loc3_);
                                                         if(!_loc10_)
                                                         {
                                                            addr172:
                                                            §§push(§§pop() + _loc6_.score);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc9_ || param2)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr194:
                                                                     if(isDamageAwardingScore(_loc6_))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc10_ && _loc3_)
                                                                           {
                                                                           }
                                                                           addr228:
                                                                           _loc3_ = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            addr227:
                                                            §§goto(addr228);
                                                            §§push(int(§§pop()));
                                                         }
                                                         §§push(_loc6_.healthMax);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * param2);
                                                         }
                                                         §§goto(addr227);
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr164);
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr121);
                           }
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr194);
               }
               return _loc3_;
            }
         }
         §§goto(addr40);
      }
      
      protected function §8y§(param1:§#!R§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §8!q§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§06§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr54);
               }
            }
            return 0;
         }
         addr54:
         return this.§06§.length * this.§9g§();
      }
      
      public function §9g§() : int
      {
         return 10000;
      }
      
      public function §4G§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§1!R§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!(_loc7_ && _loc1_))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc1_);
                     loop3:
                     while(true)
                     {
                        §§push(" LevelExtension=\"" + this.§8!i§);
                        addr225:
                        while(true)
                        {
                           §§push("\"");
                           addr226:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr227:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr228:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr229:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        addr171:
                        if(!(_loc6_ || _loc1_))
                        {
                           continue;
                        }
                        _loc1_ = §§pop();
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc1_);
                              loop28:
                              while(true)
                              {
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§§pop() + ">");
                                    loop29:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                break;
                                             }
                                             _loc1_ = §§pop();
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc1_);
                                                         if(!(_loc6_ || _loc1_))
                                                         {
                                                            continue loop28;
                                                         }
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr47:
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               §§push(§§pop() + "<Cameras>");
                                                               if(_loc7_)
                                                               {
                                                                  continue loop29;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc7_ && _loc2_)
                                                                  {
                                                                     break loop28;
                                                                  }
                                                                  continue;
                                                               }
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     addr218:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        addr182:
                                                                        addr198:
                                                                        loop16:
                                                                        while(_loc6_)
                                                                        {
                                                                           §§push(" scoreSilver=\"" + this.§8!z§);
                                                                           while(true)
                                                                           {
                                                                              §§push("\"");
                                                                              addr189:
                                                                              while(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr193:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr194:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          addr195:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             continue loop16;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr158:
                                                                              §§goto(addr226);
                                                                              addr158:
                                                                              if(_loc7_ && _loc1_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr169:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       §§goto(addr171);
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr168:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr215:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 addr215:
                                                                              }
                                                                           }
                                                                        }
                                                                        while(_loc6_)
                                                                        {
                                                                           §§push(" AutoCamera=\"" + this.§%""§);
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push("\"");
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr214:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr225);
                                                                              }
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(" scoreGold=\"" + this.§91§);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push("\"");
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr158);
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                           §§goto(addr189);
                                                                        }
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr158);
                                                               }
                                                               §§goto(addr182);
                                                               §§goto(addr47);
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                      addr230:
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr195);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr194);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      public function getObject(param1:int) : §8K§
      {
         return this.§2!z§[param1];
      }
      
      public function §,]§(param1:§8K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.type != null)
            {
               do
               {
                  this.§2!z§.push(param1);
               }
               while(!_loc3_);
               
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
         throw new Error("Item type can\'t be null.");
      }
      
      public function §%!m§(param1:int) : §%!%§
      {
         return this.§+!y§[param1];
      }
      
      public function §[!7§(param1:§%!%§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!y§.push(param1);
         }
      }
      
      public function §-!Y§(param1:int) : §^!n§
      {
         return this.§06§[param1];
      }
      
      public function §44§(param1:§^!n§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§06§.push(param1);
         }
      }
      
      public function §'!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9! § = new Vector.<§1!R§>();
         }
      }
      
      public function §`"&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§06§ = new Vector.<§^!n§>();
         }
      }
      
      public function §8!W§(param1:int) : §1!R§
      {
         return this.§9! §[param1];
      }
      
      public function §7!x§(param1:§1!R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9! §.push(param1);
         }
      }
   }
}
