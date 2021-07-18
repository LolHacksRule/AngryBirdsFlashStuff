package §^]§
{
   import §&o§.§3,§;
   import §&o§.§3I§;
   import §&o§.§72§;
   import §-!O§.§?Z§;
   import §2G§.§5!1§;
   import §2G§.§>U§;
   import §4?§.*;
   import §9T§.§1r§;
   import flash.geom.Point;
   
   public class §[z§
   {
      
      public static const §"!N§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"!N§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §6!C§:Number = 0;
      
      public var §#2§:Number = -8;
      
      private var §`!O§:Vector.<§72§> = null;
      
      private var §,N§:Vector.<§3I§> = null;
      
      private var §0b§:Vector.<§3,§> = null;
      
      private var §?!3§:Vector.<§]X§> = null;
      
      public var §3p§:Number = 0;
      
      public var §3]§:Boolean = false;
      
      public var §@w§:int = 0;
      
      public var §,!<§:int = 0;
      
      private var §,!,§:int = 0;
      
      private var §!L§:String = null;
      
      public var mName:String = null;
      
      public function §[z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            this.§?!3§ = new Vector.<§]X§>();
            while(true)
            {
               this.§`!O§ = new Vector.<§72§>();
            }
            addr98:
         }
         loop1:
         do
         {
            this.§,N§ = new Vector.<§3I§>();
            while(!_loc1_)
            {
               this.§0b§ = new Vector.<§3,§>();
               while(!_loc1_)
               {
                  this.§!L§ = §"!N§;
                  if(!(_loc1_ && this))
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr98);
         }
         while(!_loc2_);
         
      }
      
      public static function §!@§(param1:String) : §[z§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[z§ = new §[z§();
         if(_loc3_)
         {
            _loc2_.§]R§(param1);
         }
         return _loc2_;
      }
      
      public static function §83§(param1:§5!1§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1.§]^§);
            loop0:
            while(true)
            {
               §§push(§5!1§.§4!,§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr107:
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          addr109:
                                          while(true)
                                          {
                                             §§push(param1.§]^§);
                                             if(!_loc3_)
                                             {
                                                break loop8;
                                             }
                                             addr30:
                                             §§push(§5!1§.§9D§);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() == §§pop());
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop6;
                                                   §§goto(addr30);
                                                }
                                                addr95:
                                             }
                                          }
                                          addr109:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§]^§);
                                             break loop8;
                                          }
                                          addr118:
                                       }
                                    }
                                    §§push(true);
                                    addr63:
                                    continue loop0;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       return §§pop();
                                    }
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc3_ || §[z§)
                                 {
                                    §§goto(addr63);
                                 }
                                 §§goto(addr107);
                              }
                              return false;
                           }
                           break;
                        }
                        continue;
                     }
                     §§pop();
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public static function §@!2§(param1:String) : §[z§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§[z§ = §!@§(param1);
         if(_loc4_ || _loc2_)
         {
            _loc2_.§6!C§ = _loc2_.§,N§[0].x;
            if(!_loc5_)
            {
               _loc2_.§#2§ = _loc2_.§,N§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || param1)
            {
               if(§§pop() >= _loc2_.§`!O§.length)
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  _loc2_.§`!O§[_loc3_].angle = 360 - _loc2_.§`!O§[_loc3_].angle;
               }
               §§push(_loc3_);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc3_ = §§pop();
         }
         return _loc2_;
      }
      
      protected static function § g§(param1:int, param2:Object) : Vector.<§3,§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§3,§ = null;
         var _loc3_:Vector.<§3,§> = new Vector.<§3,§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!_loc9_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc9_)
               {
                  §§push(_loc5_.type == §3,§.§]K§);
                  if(!_loc10_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              addr100:
                              if(_loc5_.type == §3,§.§0!9§)
                              {
                                 addr101:
                                 _loc8_ = new §3,§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(!_loc10_)
                                 {
                                    if(_loc5_.type == §3,§.§0!9§)
                                    {
                                       _loc8_.axisX = _loc5_.axisX;
                                       _loc8_.axisY = _loc5_.axisY;
                                       if(_loc10_ && _loc3_)
                                       {
                                       }
                                       addr202:
                                       _loc4_++;
                                       continue;
                                    }
                                    addr166:
                                    if(_loc5_.type == §3,§.§>R§)
                                    {
                                       if(!(_loc10_ && param1))
                                       {
                                          addr188:
                                          _loc8_.§9"§ = _loc5_.destroyTimer;
                                          if(_loc9_ || §[z§)
                                          {
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                    _loc3_.push(_loc8_);
                                    §§goto(addr202);
                                 }
                                 §§goto(addr188);
                              }
                              else
                              {
                                 _loc8_ = new §3,§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr101);
                        }
                     }
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr202);
         }
         return _loc3_;
      }
      
      public function get §;J§() : int
      {
         return this.§`!O§.length;
      }
      
      public function get §&,§() : int
      {
         return this.§0b§.length;
      }
      
      public function get § l§() : int
      {
         return this.§,N§.length;
      }
      
      public function get §9!N§() : int
      {
         return this.§?!3§.length;
      }
      
      public function get theme() : String
      {
         return this.§!L§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!L§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§,u§());
         if(!(_loc3_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr126:
                           loop7:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr103:
                              loop4:
                              while(true)
                              {
                                 §§push(this.§,!,§);
                                 addr105:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc2_)
                                    {
                                       break loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr125:
                     }
                     loop2:
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§,!,§);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(0);
                              if(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop2;
                                          }
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(_loc1_);
                                             break;
                                          }
                                          §§goto(addr126);
                                       }
                                       else if(_loc3_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(this.§,!,§);
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr111);
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr103);
                        }
                        continue loop0;
                     }
                     addr111:
                     return §§pop();
                     §§push(_loc1_);
                  }
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §0c§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§,u§());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr94:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr95:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr97:
                     }
                     else
                     {
                        while(!§§pop())
                        {
                           while(true)
                           {
                              this.§,!,§ = param1;
                              if(_loc4_)
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           if(_loc4_)
                           {
                              return;
                           }
                           break;
                        }
                        addr86:
                     }
                  }
               }
            }
         }
      }
      
      public function §]R§(param1:String) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc8_:§]X§ = null;
         var _loc9_:Object = null;
         var _loc10_:§3I§ = null;
         var _loc11_:§72§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§3p§ = _loc2_.LevelExtension;
         this.§3]§ = false;
         loop0:
         while(true)
         {
            this.§@w§ = _loc2_.scoreSilver;
            loop1:
            while(true)
            {
               this.§,!<§ = _loc2_.scoreGold;
               this.§,!,§ = _loc2_.scoreEagle;
               loop2:
               while(true)
               {
                  this.§!L§ = _loc2_.theme;
                  while(true)
                  {
                     this.mName = _loc2_.id;
                     loop4:
                     for(; _loc12_; while(!(_loc13_ && this))
                     {
                        if(_loc13_)
                        {
                           continue loop2;
                        }
                        §§goto(addr66);
                     })
                     {
                        if(_loc2_.counts.joints)
                        {
                           if(_loc12_ || this)
                           {
                              continue loop1;
                           }
                           continue;
                        }
                        addr66:
                        while(true)
                        {
                           this.§?!3§ = new Vector.<§]X§>();
                           while(!_loc13_)
                           {
                              while(true)
                              {
                                 this.§,N§ = new Vector.<§3I§>();
                                 this.§`!O§ = new Vector.<§72§>();
                                 if(!(_loc12_ || param1))
                                 {
                                    break;
                                 }
                                 if(!_loc12_)
                                 {
                                    continue loop4;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc3_:* = Number(0);
                                 addr285:
                                 §§push(_loc3_);
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    if(§§pop() < _loc2_.camera.length)
                                    {
                                       (_loc8_ = new §]X§()).x = _loc2_.camera[_loc3_].x;
                                       if(_loc12_ || param1)
                                       {
                                          _loc8_.y = _loc2_.camera[_loc3_].y;
                                          _loc8_.left = _loc2_.camera[_loc3_].left;
                                          _loc8_.right = _loc2_.camera[_loc3_].right;
                                          addr284:
                                       }
                                       _loc8_.top = _loc2_.camera[_loc3_].top;
                                       addr267:
                                       if(_loc12_ || _loc3_)
                                       {
                                          _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
                                          addr240:
                                          if(_loc12_)
                                          {
                                             _loc8_.id = _loc2_.camera[_loc3_].id;
                                             addr224:
                                             if(_loc12_ || param1)
                                             {
                                                addr210:
                                                this.§?!3§.push(_loc8_);
                                                addr215:
                                                §§push(_loc3_);
                                                if(!(_loc13_ && _loc2_))
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      addr197:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr284);
                                    }
                                    if(!_loc13_)
                                    {
                                       §§push(Number(1));
                                       if(!_loc13_)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc12_ || _loc3_)
                                          {
                                             addr386:
                                             if(_loc3_ <= _loc2_.counts.birds)
                                             {
                                                _loc9_ = _loc2_.world["bird_" + _loc3_];
                                                (_loc10_ = new §3I§()).x = _loc9_.x;
                                                if(_loc12_)
                                                {
                                                   _loc10_.y = _loc9_.y;
                                                }
                                                _loc10_.id = _loc9_.id;
                                                addr367:
                                                this.§,N§.push(_loc10_);
                                                addr380:
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(_loc12_)
                                                      {
                                                         addr349:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr367);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr367);
                                                   }
                                                   §§goto(addr349);
                                                }
                                                addr385:
                                                §§goto(addr385);
                                             }
                                          }
                                       }
                                       §§goto(addr386);
                                    }
                                    var _loc4_:Vector.<int> = new Vector.<int>();
                                    var _loc7_:int = 1;
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       §§push(1);
                                       if(!_loc13_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc12_ || _loc2_)
                                          {
                                             _loc3_ = §§pop();
                                             addr505:
                                             §§push(_loc3_);
                                             if(_loc12_ || _loc3_)
                                             {
                                                if(§§pop() <= _loc2_.counts.blocks)
                                                {
                                                   §§push("block_");
                                                   if(_loc12_ || _loc2_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc13_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!(_loc13_ && _loc3_))
                                                               {
                                                                  §§push(Boolean((_loc5_ = _loc2_.world[_loc6_]).uniqueID));
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           addr465:
                                                                           §§pop();
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr473:
                                                                              if(_loc5_.uniqueID.length > 0)
                                                                              {
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    addr481:
                                                                                    _loc4_.push(_loc5_.uniqueID);
                                                                                    if(_loc12_ || _loc3_)
                                                                                    {
                                                                                       addr492:
                                                                                       §§push(_loc3_);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(_loc12_ || _loc2_)
                                                                                          {
                                                                                             addr503:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc3_ = §§pop();
                                                                                          §§goto(addr505);
                                                                                       }
                                                                                       §§goto(addr503);
                                                                                    }
                                                                                    §§goto(addr505);
                                                                                 }
                                                                              }
                                                                              §§goto(addr492);
                                                                           }
                                                                           §§goto(addr481);
                                                                        }
                                                                     }
                                                                     §§goto(addr473);
                                                                  }
                                                                  §§goto(addr465);
                                                               }
                                                               addr681:
                                                               if(_loc3_ <= _loc2_.counts.blocks)
                                                               {
                                                                  §§push("block_");
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     addr542:
                                                                     _loc6_ = §§pop() + _loc3_;
                                                                     _loc5_ = _loc2_.world[_loc6_];
                                                                     (_loc11_ = new §72§()).x = _loc5_.x;
                                                                     _loc11_.y = _loc5_.y;
                                                                     _loc11_.id = _loc5_.id;
                                                                     addr680:
                                                                     §§push(Boolean(_loc5_.uniqueID));
                                                                     if(_loc12_ || _loc2_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr668:
                                                                           §§pop();
                                                                           §§push(_loc5_.uniqueID.length > 0);
                                                                           if(!_loc12_)
                                                                           {
                                                                           }
                                                                           §§goto(addr668);
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr640:
                                                                           _loc11_.uniqueID = _loc5_.uniqueID;
                                                                           addr596:
                                                                           if(_loc5_.front)
                                                                           {
                                                                              addr600:
                                                                              _loc11_.front = _loc5_.front;
                                                                           }
                                                                           _loc11_.angle = _loc5_.angle;
                                                                           addr575:
                                                                           this.§`!O§.push(_loc11_);
                                                                           addr595:
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr575);
                                                                                          }
                                                                                          §§goto(addr681);
                                                                                       }
                                                                                       §§goto(addr640);
                                                                                    }
                                                                                    addr609:
                                                                                    §§goto(addr596);
                                                                                 }
                                                                                 §§goto(addr595);
                                                                              }
                                                                              §§goto(addr680);
                                                                           }
                                                                           §§goto(addr600);
                                                                        }
                                                                        addr610:
                                                                        if(_loc4_.indexOf(_loc7_) < 0)
                                                                        {
                                                                           _loc11_.uniqueID = _loc7_.toString();
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc4_.push(_loc7_);
                                                                              §§goto(addr609);
                                                                           }
                                                                           addr629:
                                                                           §§goto(addr610);
                                                                        }
                                                                        _loc7_++;
                                                                        §§goto(addr629);
                                                                     }
                                                                     §§goto(addr668);
                                                                     addr541:
                                                                     addr539:
                                                                     addr540:
                                                                  }
                                                                  §§goto(addr541);
                                                               }
                                                               this.§6!C§ = _loc2_.slingshotX;
                                                               this.§#2§ = _loc2_.slingshotY;
                                                               addr694:
                                                               return;
                                                               addr529:
                                                            }
                                                            §§goto(addr542);
                                                         }
                                                         §§goto(addr539);
                                                      }
                                                      §§goto(addr540);
                                                   }
                                                   §§goto(addr542);
                                                }
                                                addr518:
                                                §§push(Number(1));
                                                if(_loc12_ || param1)
                                                {
                                                   addr526:
                                                   _loc3_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr529);
                                                   }
                                                   §§goto(addr694);
                                                }
                                                §§goto(addr681);
                                             }
                                             addr418:
                                          }
                                          §§goto(addr526);
                                       }
                                       §§goto(addr518);
                                    }
                                    §§goto(addr418);
                                 }
                                 §§goto(addr386);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function § u§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§3p§;
         do
         {
            _loc1_.scoreSilver = this.§@w§;
            _loc1_.scoreGold = this.§,!<§;
            _loc1_.scoreEagle = this.§,!,§;
         }
         while(!(_loc4_ || _loc3_));
         
         _loc1_.theme = this.§!L§;
         do
         {
            _loc1_.name = this.mName;
            do
            {
               _loc1_.camera = this.§?!3§;
            }
            while(!_loc4_);
            
         }
         while(false);
         
         var _loc2_:* = Number(0);
         if(_loc4_ || this)
         {
            _loc1_.world = new Object();
            do
            {
               _loc2_ = Number(0);
            }
            while(!(_loc4_ || this));
            
         }
         loop4:
         while(true)
         {
            if(_loc2_ >= this.§,N§.length)
            {
               loop5:
               while(true)
               {
                  §§push(0);
                  loop6:
                  while(true)
                  {
                     _loc2_ = Number(§§pop());
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              if(§§pop() >= this.§`!O§.length)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc3_ && this)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    loop10:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc4_ || _loc1_)
                                          {
                                             while(true)
                                             {
                                                if(_loc2_ >= this.§0b§.length)
                                                {
                                                   _loc1_.counts = new Object();
                                                   if(_loc3_)
                                                   {
                                                      §§push(Number(_loc2_ + 1));
                                                   }
                                                   else
                                                   {
                                                      addr320:
                                                   }
                                                   _loc1_.counts.blocks = this.§`!O§.length;
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr255:
                                                         if(_loc3_ && this)
                                                         {
                                                            while(true)
                                                            {
                                                               addr252:
                                                               break loop11;
                                                               §§goto(addr255);
                                                            }
                                                            addr278:
                                                         }
                                                         continue loop8;
                                                      }
                                                      _loc1_.counts.birds = this.§,N§.length;
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               _loc1_.counts.joints = this.§0b§.length;
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  _loc1_.slingshotX = this.§6!C§;
                                                                  continue;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue;
                                                   break loop8;
                                                }
                                                _loc1_.world["joint_" + (_loc2_ + 1)] = this.§0b§[_loc2_];
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                          continue loop5;
                                       }
                                       addr254:
                                       _loc2_ = §§pop();
                                       §§goto(addr255);
                                    }
                                 }
                                 continue loop6;
                              }
                              _loc1_.world["block_" + (_loc2_ + 1)] = this.§`!O§[_loc2_];
                              §§goto(addr278);
                           }
                           break;
                        }
                        _loc2_ = §§pop();
                        continue loop4;
                     }
                  }
               }
            }
            else
            {
               _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,N§[_loc2_];
            }
            §§goto(addr320);
         }
      }
      
      public function §3U§() : String
      {
         return JSON.stringify(this.§ u§());
      }
      
      public function §,u§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§72§ = null;
         var _loc3_:* = null;
         var _loc4_:§5!1§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§`!O§)
         {
            if(_loc7_ || _loc3_)
            {
               §§push(_loc2_.id);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §>U§.§=v§(_loc3_)) == null);
            if(_loc7_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     §§pop();
                     §§push(_loc3_);
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(§§pop().indexOf("MISC_") == 0);
                        if(_loc7_)
                        {
                           addr97:
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr108:
                                 §§push("MISC_FOOD_");
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + _loc3_.substring(5));
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc7_)
                                 {
                                    _loc4_ = §>U§.§=v§(_loc3_);
                                    addr116:
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(_loc8_ && this)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(_loc1_);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(§§pop() + _loc4_.score);
                                    if(_loc7_ || _loc1_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!(_loc8_ && _loc1_))
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc7_)
                                          {
                                             addr157:
                                             if(§83§(_loc4_))
                                             {
                                                addr158:
                                                §§push(_loc1_);
                                                if(_loc8_ && _loc2_)
                                                {
                                                }
                                                _loc1_ = §§pop();
                                             }
                                             continue;
                                          }
                                          §§goto(addr158);
                                       }
                                       §§push(_loc4_.§53§);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() * §1r§.§5m§.getValue());
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(int(§§pop()));
                                 }
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr157);
               }
               §§goto(addr97);
            }
            §§goto(addr157);
         }
         return _loc1_;
      }
      
      public function §>!A§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§]X§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!_loc7_)
         {
            §§push(_loc1_ + "<Level background=\"ThemeHills\"");
            while(true)
            {
               _loc1_ = §§pop();
               §§push(_loc1_);
               §§push(" LevelExtension=\"" + this.§3p§);
               loop1:
               while(true)
               {
                  §§push("\"");
                  addr157:
                  while(true)
                  {
                     §§push(§§pop() + (§§pop() + §§pop()));
                     addr159:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        §§push(_loc1_);
                        §§push(" AutoCamera=\"");
                        continue loop1;
                     }
                  }
               }
               while(_loc6_ || _loc1_)
               {
                  §§goto(addr148);
                  §§push(§§pop());
               }
            }
         }
         §§goto(addr40);
      }
      
      public function § for§(param1:int) : §72§
      {
         return this.§`!O§[param1];
      }
      
      public function addObject(param1:§72§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!O§.push(param1);
         }
      }
      
      public function §9K§(param1:int) : §3,§
      {
         return this.§0b§[param1];
      }
      
      public function §%y§(param1:§3,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0b§.push(param1);
         }
      }
      
      public function §]O§(param1:int) : §3I§
      {
         return this.§,N§[param1];
      }
      
      public function §[`§(param1:§3I§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,N§.push(param1);
         }
      }
      
      public function §,]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!3§ = new Vector.<§]X§>();
         }
      }
      
      public function §2f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§,N§ = new Vector.<§3I§>();
         }
      }
      
      public function §>d§(param1:int) : §]X§
      {
         return this.§?!3§[param1];
      }
      
      public function §-!L§(param1:§]X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!3§.push(param1);
         }
      }
   }
}
