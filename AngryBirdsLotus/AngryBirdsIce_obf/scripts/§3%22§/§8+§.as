package §3"§
{
   import §4N§.§&!@§;
   import §4N§.§9o§;
   import §5!@§.§0!7§;
   import §5!@§.§=!%§;
   import §5!@§.§=!3§;
   import §<<§.*;
   import §[K§.§2!1§;
   import §[x§.§2^§;
   import flash.geom.Point;
   
   public class §8+§
   {
      
      public static const §#0§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §8+§)
         {
            §#0§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §true §:Number = 0;
      
      public var §&J§:Number = -8;
      
      private var §1I§:Vector.<§=!3§> = null;
      
      private var §]<§:Vector.<§0!7§> = null;
      
      private var §?]§:Vector.<§=!%§> = null;
      
      private var §%!G§:Vector.<§?!&§> = null;
      
      public var §89§:Number = 0;
      
      public var §>!B§:Boolean = false;
      
      public var §#o§:int = 0;
      
      public var §1U§:int = 0;
      
      private var §<$§:int = 0;
      
      private var §2T§:String = null;
      
      public var mName:String = null;
      
      public function §8+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super();
         loop0:
         while(true)
         {
            this.§%!G§ = new Vector.<§?!&§>();
            while(true)
            {
               this.§1I§ = new Vector.<§=!3§>();
               this.§]<§ = new Vector.<§0!7§>();
               while(_loc2_ || _loc1_)
               {
                  this.§?]§ = new Vector.<§=!%§>();
                  while(_loc2_)
                  {
                     continue loop0;
                     this.§2T§ = §#0§;
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public static function §]t§(param1:String) : §8+§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8+§ = new §8+§();
         if(_loc3_)
         {
            _loc2_.§'2§(param1);
         }
         return _loc2_;
      }
      
      public static function §7I§(param1:§9o§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1.§&!E§);
            loop0:
            while(true)
            {
               §§push(§9o§.§2!§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                     }
                     else
                     {
                        loop6:
                        while(true)
                        {
                           do
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr111:
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(param1.§&!E§);
                                             if(_loc2_ && _loc3_)
                                             {
                                                break;
                                             }
                                             addr37:
                                             §§push(§9o§.§>]§);
                                             if(_loc3_ || param1)
                                             {
                                                if(_loc2_ && param1)
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
                                                   §§goto(addr37);
                                                }
                                                addr104:
                                             }
                                             addr113:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(param1.§&!E§);
                                                break loop9;
                                             }
                                             addr122:
                                          }
                                       }
                                       continue loop0;
                                    }
                                    addr110:
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop10;
                                             }
                                             §§goto(addr110);
                                          }
                                          addr69:
                                       }
                                       else if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             addr20:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(!_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr69);
                                             }
                                          }
                                          addr81:
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr20);
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           while(_loc2_ && _loc2_);
                           
                           return §§pop();
                        }
                     }
                     §§goto(addr122);
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public static function §0Q§(param1:String) : §8+§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§8+§ = §]t§(param1);
         if(!(_loc5_ && param1))
         {
            _loc2_.§true § = _loc2_.§]<§[0].x;
            if(!(_loc5_ && §8+§))
            {
               addr42:
               _loc2_.§&J§ = _loc2_.§]<§[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() >= _loc2_.§1I§.length)
                     {
                        if(_loc5_ && param1)
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
                        _loc2_.§1I§[_loc3_].angle = 360 - _loc2_.§1I§[_loc3_].angle;
                     }
                     addr119:
                     §§push(_loc3_);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr119);
            }
            return _loc2_;
         }
         §§goto(addr42);
      }
      
      protected static function §>1§(param1:int, param2:Object) : Vector.<§=!%§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§=!%§ = null;
         var _loc3_:Vector.<§=!%§> = new Vector.<§=!%§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!(_loc9_ || param1))
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc5_.type == §=!%§.§=f§);
                  if(_loc9_ || param2)
                  {
                     if(!§§pop())
                     {
                        if(_loc9_)
                        {
                           addr107:
                           §§pop();
                           if(!(_loc10_ && _loc3_))
                           {
                              addr120:
                              if(_loc5_.type == §=!%§.§8!§)
                              {
                                 addr121:
                                 _loc8_ = new §=!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(_loc5_.type == §=!%§.§8!§)
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          _loc8_.axisY = _loc5_.axisY;
                                          if(_loc9_)
                                          {
                                             addr203:
                                             if(_loc5_.type == §=!%§.§;!-§)
                                             {
                                                if(!_loc10_)
                                                {
                                                   _loc8_.§"!!§ = _loc5_.destroyTimer;
                                                }
                                             }
                                             addr178:
                                          }
                                          addr217:
                                          _loc4_++;
                                          continue;
                                       }
                                       _loc3_.push(_loc8_);
                                       §§goto(addr217);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr217);
                              }
                              else
                              {
                                 _loc8_ = new §=!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr121);
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr107);
               }
               §§goto(addr120);
            }
            §§goto(addr217);
         }
         return _loc3_;
      }
      
      public function get §?c§() : int
      {
         return this.§1I§.length;
      }
      
      public function get §5!$§() : int
      {
         return this.§?]§.length;
      }
      
      public function get §1x§() : int
      {
         return this.§]<§.length;
      }
      
      public function get §6k§() : int
      {
         return this.§%!G§.length;
      }
      
      public function get theme() : String
      {
         return this.§2T§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2T§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§%!%§());
         if(!(_loc2_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
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
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr102:
                              loop5:
                              for(; !_loc2_; §§goto(addr102))
                              {
                                 addr106:
                                 §§push(§§pop() < §§pop());
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§<$§);
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr81:
                                                            §§push(_loc1_);
                                                            break;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop3;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      break loop3;
                                                   }
                                                }
                                                §§push(this.§<$§);
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop0;
                                                }
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          break loop6;
                                       }
                                    }
                                    break loop6;
                                    §§goto(addr106);
                                 }
                              }
                              §§push(this.§<$§);
                              continue loop1;
                           }
                           return §§pop();
                        }
                        addr126:
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §[!@§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§%!%§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr108:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr109:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr111:
                     }
                     else
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§<$§ = param1;
                           }
                           while(_loc4_ && _loc2_);
                           
                           if(_loc4_)
                           {
                              break;
                           }
                           if(_loc3_ || _loc2_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        addr102:
                     }
                  }
               }
            }
         }
      }
      
      public function §'2§(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§?!&§ = null;
         var _loc5_:Object = null;
         var _loc6_:§0!7§ = null;
         var _loc7_:Object = null;
         var _loc8_:§=!3§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc10_ && this))
         {
            this.§89§ = _loc2_.LevelExtension;
            while(true)
            {
               this.§>!B§ = false;
               addr131:
               while(!_loc10_)
               {
                  this.§#o§ = _loc2_.scoreSilver;
                  this.§1U§ = _loc2_.scoreGold;
                  this.§<$§ = _loc2_.scoreEagle;
                  this.§2T§ = _loc2_.theme;
                  this.mName = _loc2_.id;
               }
            }
         }
         do
         {
            if(_loc2_.counts.joints)
            {
               this.§?]§ = §>1§(_loc2_.counts.joints,_loc2_.world);
               while(!_loc10_)
               {
               }
               §§goto(addr131);
               addr94:
            }
            while(true)
            {
               this.§%!G§ = new Vector.<§?!&§>();
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr94);
            }
         }
         while(!_loc9_);
         
         do
         {
            this.§]<§ = new Vector.<§0!7§>();
            do
            {
               this.§1I§ = new Vector.<§=!3§>();
            }
            while(_loc10_ && _loc2_);
            
         }
         while(false);
         
         var _loc3_:* = Number(0);
         loop7:
         while(true)
         {
            §§push(_loc3_);
            if(_loc9_ || this)
            {
               if(§§pop() >= _loc2_.camera.length)
               {
                  §§push(1);
                  if(_loc9_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc9_)
                     {
                        _loc3_ = §§pop();
                        if(_loc9_)
                        {
                           addr352:
                           §§push(_loc3_);
                           if(!(_loc10_ && _loc3_))
                           {
                              if(§§pop() <= _loc2_.counts.birds)
                              {
                                 _loc5_ = _loc2_.world["bird_" + _loc3_];
                                 (_loc6_ = new §0!7§()).x = _loc5_.x;
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc6_.y = _loc5_.y;
                                 }
                                 _loc6_.id = _loc5_.id;
                                 addr335:
                                 this.§]<§.push(_loc6_);
                                 addr351:
                                 addr346:
                                 addr340:
                                 §§push(_loc3_);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc9_)
                                    {
                                       addr320:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc3_ = §§pop();
                                    if(!_loc10_)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr335);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr351);
                                       }
                                       §§goto(addr346);
                                    }
                                    §§goto(addr340);
                                 }
                                 §§goto(addr320);
                              }
                              addr365:
                              §§push(Number(1));
                              if(!(_loc10_ && this))
                              {
                                 addr373:
                                 _loc3_ = §§pop();
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    addr476:
                                    §§push(_loc3_);
                                    break;
                                 }
                                 this.§true § = _loc2_.slingshotX;
                                 if(!_loc10_)
                                 {
                                    this.§&J§ = _loc2_.slingshotY;
                                 }
                              }
                              break;
                           }
                           break;
                        }
                        §§goto(addr498);
                     }
                     §§goto(addr373);
                  }
                  §§goto(addr365);
               }
               else
               {
                  (_loc4_ = new §?!&§()).x = _loc2_.camera[_loc3_].x;
                  _loc4_.y = _loc2_.camera[_loc3_].y;
                  _loc4_.left = _loc2_.camera[_loc3_].left;
                  loop8:
                  while(true)
                  {
                     _loc4_.right = _loc2_.camera[_loc3_].right;
                     loop9:
                     while(true)
                     {
                        _loc4_.top = _loc2_.camera[_loc3_].top;
                        while(true)
                        {
                           _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                           continue loop9;
                           addr167:
                           if(_loc9_ || _loc3_)
                           {
                              if(_loc9_)
                              {
                                 addr176:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       this.§%!G§.push(_loc4_);
                                       addr183:
                                       while(_loc9_ || this)
                                       {
                                          §§push(_loc3_);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc9_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc3_ = §§pop();
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr167);
                                       }
                                       continue loop9;
                                       §§goto(addr176);
                                    }
                                    addr178:
                                 }
                                 continue loop7;
                              }
                              continue loop8;
                           }
                        }
                     }
                  }
               }
            }
            break;
         }
         loop14:
         for(; §§pop() <= _loc2_.counts.blocks; §§goto(addr476))
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §=!3§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               while(true)
               {
                  _loc8_.front = _loc7_.front;
                  addr454:
                  while(true)
                  {
                  }
               }
               addr450:
            }
            loop17:
            while(true)
            {
               _loc8_.angle = _loc7_.angle;
               while(true)
               {
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        this.§1I§.push(_loc8_);
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              continue loop17;
                           }
                           §§push(_loc3_);
                           if(!(_loc10_ && this))
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc10_ && this))
                              {
                                 addr417:
                                 §§push(Number(§§pop()));
                              }
                              _loc3_ = §§pop();
                              if(_loc9_ || this)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr417);
                        }
                        if(_loc10_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        continue loop14;
                     }
                     continue;
                  }
                  §§goto(addr450);
               }
            }
         }
         if(_loc9_ || this)
         {
            §§goto(addr373);
         }
         addr498:
      }
      
      public function §]!<§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            _loc1_.LevelExtension = this.§89§;
            while(true)
            {
               _loc1_.scoreSilver = this.§#o§;
               while(!_loc3_)
               {
                  _loc1_.scoreGold = this.§1U§;
                  do
                  {
                     _loc1_.scoreEagle = this.§<$§;
                  }
                  while(!_loc4_);
                  
                  _loc1_.theme = this.§2T§;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  loop3:
                  while(true)
                  {
                     _loc1_.name = this.mName;
                     _loc1_.camera = this.§%!G§;
                     addr29:
                     while(false)
                     {
                        continue loop3;
                     }
                     var _loc2_:* = Number(0);
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.world = new Object();
                        do
                        {
                           _loc2_ = Number(0);
                        }
                        while(_loc3_ && _loc3_);
                        
                     }
                     loop6:
                     while(true)
                     {
                        if(_loc2_ >= this.§]<§.length)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(0);
                              loop8:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop9:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc2_ >= this.§1I§.length)
                                          {
                                             loop12:
                                             while(!_loc3_)
                                             {
                                                §§push(0);
                                                if(_loc3_ && _loc1_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc3_)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(§§pop() >= this.§?]§.length)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        _loc1_.counts = new Object();
                                                                        loop15:
                                                                        for(; !_loc3_; loop17:
                                                                        while(_loc4_ || _loc1_)
                                                                        {
                                                                           _loc1_.counts.joints = this.§?]§.length;
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(_loc3_ && this)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(!(_loc4_ || _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc1_.slingshotX = this.§true §;
                                                                              while(_loc4_)
                                                                              {
                                                                                 _loc1_.slingshotY = this.§&J§;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                break loop14;
                                                                                             }
                                                                                             addr324:
                                                                                             §§push(_loc2_);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr275:
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             return _loc1_;
                                                                                          }
                                                                                          continue loop10;
                                                                                          break loop11;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                              }
                                                                              §§goto(addr173);
                                                                           }
                                                                           continue loop11;
                                                                        })
                                                                        {
                                                                           _loc1_.counts.blocks = this.§1I§.length;
                                                                           while(true)
                                                                           {
                                                                              _loc1_.counts.birds = this.§]<§.length;
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               addr242:
                                                               if(_loc4_ || this)
                                                               {
                                                                  addr250:
                                                                  §§push(Number(§§pop() + 1));
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  continue loop11;
                                                               }
                                                               continue loop9;
                                                            }
                                                            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§?]§[_loc2_];
                                                            §§push(_loc2_ + 1);
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                }
                                                §§goto(addr250);
                                             }
                                             continue loop6;
                                          }
                                          _loc1_.world["block_" + (_loc2_ + 1)] = this.§1I§[_loc2_];
                                          §§goto(addr275);
                                          §§goto(addr242);
                                       }
                                       _loc2_ = Number(§§pop() + 1);
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc1_.world["bird_" + (_loc2_ + 1)] = this.§]<§[_loc2_];
                        }
                        §§goto(addr324);
                     }
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      public function §]i§() : String
      {
         return JSON.stringify(this.§]!<§());
      }
      
      public function §%!%§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§=!3§ = null;
         var _loc3_:* = null;
         var _loc4_:§9o§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§1I§)
         {
            if(!_loc7_)
            {
               §§push(_loc2_.id);
               if(_loc8_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §&!@§.§9B§(_loc3_)) == null);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc8_ || _loc2_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(!_loc7_)
                           {
                              addr95:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    addr111:
                                    §§push("MISC_FOOD_");
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + _loc3_.substring(5));
                                    }
                                    _loc3_ = §§pop();
                                    _loc4_ = §&!@§.§9B§(_loc3_);
                                    addr117:
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc1_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + _loc4_.score);
                                       if(!_loc7_)
                                       {
                                          §§push(int(§§pop()));
                                          if(!_loc7_)
                                          {
                                             addr132:
                                             _loc1_ = §§pop();
                                             if(!_loc7_)
                                             {
                                                addr148:
                                                if(§7I§(_loc4_))
                                                {
                                                   addr149:
                                                   §§push(_loc1_);
                                                   if(!_loc7_)
                                                   {
                                                      addr152:
                                                      §§push(_loc4_.§[!3§);
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         §§push(§§pop() * §2^§.§<A§.getValue());
                                                      }
                                                      §§push(int(§§pop() + §§pop()));
                                                   }
                                                   _loc1_ = §§pop();
                                                }
                                                continue;
                                             }
                                             §§goto(addr149);
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr148);
                  }
               }
            }
            §§goto(addr95);
         }
         return _loc1_;
      }
      
      public function §4!6§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§?!&§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               _loc1_ = §§pop() + "<Level background=\"ThemeHills\"";
               §§push(_loc1_);
               §§push(" LevelExtension=\"" + this.§89§);
               loop1:
               while(true)
               {
                  §§push("\"");
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() + (§§pop() + §§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc6_)
                              {
                                 §§push(" AutoCamera=\"" + this.§>!B§);
                                 §§push("\"");
                                 loop6:
                                 while(_loc7_ || _loc3_)
                                 {
                                    §§push(§§pop() + (§§pop() + §§pop()));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                _loc1_ = §§pop();
                                                §§push(_loc1_);
                                                loop15:
                                                for(; _loc7_; while(!(_loc6_ && _loc1_))
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr59);
                                                   §§push(">");
                                                })
                                                {
                                                   §§push(" scoreGold=\"");
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      §§push(this.§1U§);
                                                      if(!_loc6_)
                                                      {
                                                         addr90:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc6_ && _loc1_))
                                                         {
                                                            §§push("\"");
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop16:
                                                               while(_loc7_ || _loc2_)
                                                               {
                                                                  _loc1_ = §§pop() + §§pop();
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     addr47:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        continue loop15;
                                                                     }
                                                                     addr45:
                                                                     loop21:
                                                                     do
                                                                     {
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push("<Cameras>");
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              addr59:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc1_ = §§pop();
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     while(_loc1_ = §§pop() + §§pop(), !_loc7_);
                                                                     
                                                                     while(false)
                                                                     {
                                                                        §§goto(addr47);
                                                                     }
                                                                     for each(_loc2_ in this.§%!G§)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc1_);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push(" <Camera id=\"");
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() + _loc2_.id);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push("\" leftBorder=\"");
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(_loc2_.left);
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       addr232:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push("\" rightBorder=\"");
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr236:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(_loc2_.right);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push("\" topBorder=\"");
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      addr264:
                                                                                                      §§push(_loc2_.top);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr268:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr271:
                                                                                                            §§push("\" bottomBorder=\"");
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr274:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr291:
                                                                                                                  §§push(_loc2_.top);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr281:
                                                                                                                     §§push(§§pop() + §2!1§.§2s§);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr288:
                                                                                                                     §§push(§§pop() + "\"></Camera>");
                                                                                                                  }
                                                                                                                  _loc1_ = §§pop() + §§pop();
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr288);
                                                                                                      }
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                   §§goto(addr271);
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    §§goto(addr268);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr236);
                                                                        }
                                                                        §§goto(addr291);
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           §§push("</Cameras>");
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              _loc1_ = §§pop() + §§pop();
                                                                              §§push(_loc1_);
                                                                              §§push("<Slingshot x=\"");
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + this.§]<§[0].x);
                                                                                 §§push("\" y=\"");
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(_loc7_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + (§§pop() + (this.§]<§[0].y - 8) + "\">"));
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             _loc1_ = §§pop();
                                                                                             loop31:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc1_ + " <Birds>");
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         if(!(_loc7_ || this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            continue loop34;
                                                                                                            addr537:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                               }
                                                               while(!_loc6_)
                                                               {
                                                                  §§push(this.§#o§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               continue loop1;
                                                               addr120:
                                                            }
                                                            continue loop13;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr90);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr160);
                                             }
                                             addr119:
                                             while(true)
                                             {
                                                §§goto(addr120);
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§goto(addr119);
                                 §§push(_loc1_);
                                 §§goto(addr160);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §!§(param1:int) : §=!3§
      {
         return this.§1I§[param1];
      }
      
      public function addObject(param1:§=!3§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1I§.push(param1);
         }
      }
      
      public function §?;§(param1:int) : §=!%§
      {
         return this.§?]§[param1];
      }
      
      public function §-%§(param1:§=!%§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?]§.push(param1);
         }
      }
      
      public function § =§(param1:int) : §0!7§
      {
         return this.§]<§[param1];
      }
      
      public function §=&§(param1:§0!7§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]<§.push(param1);
         }
      }
      
      public function §0X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%!G§ = new Vector.<§?!&§>();
         }
      }
      
      public function §#U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]<§ = new Vector.<§0!7§>();
         }
      }
      
      public function §;m§(param1:int) : §?!&§
      {
         return this.§%!G§[param1];
      }
      
      public function §]^§(param1:§?!&§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§%!G§.push(param1);
         }
      }
   }
}
