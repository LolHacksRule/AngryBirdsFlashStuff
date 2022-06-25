package §5!Q§
{
   import §40§.§5G§;
   import flash.system.Capabilities;
   
   public class §`!Y§
   {
      
      public static const §]m§:String = "@@";
      
      public static const §@!g§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]m§ = "@@";
            do
            {
               §@!g§ = "@";
            }
            while(_loc1_);
            
         }
      }
      
      private var §1m§:String;
      
      private var §6!§:int;
      
      private var § ;§:Number;
      
      private var §!!L§:Number;
      
      protected var §#!#§:Boolean;
      
      protected var §@B§:Vector.<§?v§>;
      
      protected var §,""§:Vector.<§#!m§>;
      
      private var §@a§:int;
      
      private var § f§:int;
      
      public function §`!Y§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@B§ = new Vector.<§?v§>();
            loop0:
            while(true)
            {
               this.§,""§ = new Vector.<§#!m§>();
               while(true)
               {
                  super();
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§1m§ = param1;
                     while(_loc3_)
                     {
                        continue loop0;
                        this.§ ;§ = 1;
                        if(_loc3_)
                        {
                           return;
                           addr40:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public static function initialize(param1:String) : §`!Y§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§`!Y§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§?v§ = null;
         var _loc9_:§#!m§ = null;
         var _loc3_:Array = param1.split(§]m§);
         if(!_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §`!Y§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§@!g§);
               _loc5_ = _loc3_[2].split(§@!g§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §?v§.initialize(_loc6_))
                        {
                           if(_loc13_)
                           {
                              _loc2_.§@B§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc12_)
                     {
                        if(_loc13_ || param1)
                        {
                           if(_loc13_)
                           {
                              _loc10_ = 0;
                              if(!(_loc12_ && §`!Y§))
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc13_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr175:
                                    return _loc2_;
                                    addr171:
                                    addr174:
                                    addr173:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §#!m§.initialize(_loc7_))
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc2_.§,""§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 addr158:
                              }
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr173);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr158);
                  }
                  §§goto(addr175);
               }
            }
            §§goto(addr175);
         }
         §§goto(addr49);
      }
      
      public function get §!!#§() : Boolean
      {
         return this.§#!#§;
      }
      
      public function get §#!9§() : String
      {
         return this.§1m§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ ;§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§ ;§;
      }
      
      protected function get §[!2§() : int
      {
         return this.§6!§;
      }
      
      public function §`!`§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            if(!this.§#!#§)
            {
               if(!(_loc6_ && param3))
               {
                  addr44:
                  this.§@B§.push(new §?v§(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §"z§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!this.§#!#§)
            {
               while(true)
               {
                  if(this.§,""§.length > 0)
                  {
                     if(_loc2_ || this)
                     {
                        if(this.§,""§[this.§,""§.length - 1].step != param1)
                        {
                           do
                           {
                              this.§,""§.push(new §#!m§(param1));
                           }
                           while(!_loc2_);
                           
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           continue;
                           addr28:
                        }
                        break;
                     }
                     break;
                  }
                  §§goto(addr28);
               }
               return;
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§#!#§ = true;
         }
      }
      
      public function step(param1:§5G§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§?v§ = null;
         var _loc3_:§#!m§ = null;
         if(!_loc7_)
         {
            if(this.§@B§.length > this.§@a§)
            {
               if(!_loc7_)
               {
                  _loc2_ = this.§@B§[this.§@a§];
                  if(!(_loc7_ && param1))
                  {
                     if(_loc2_.step == this.§[!2§)
                     {
                        if(!_loc7_)
                        {
                           addr53:
                           param1.slingshot.§7!t§(_loc2_.x,_loc2_.y,_loc2_.§2!§,_loc2_.angle);
                           if(_loc6_ || _loc2_)
                           {
                           }
                           addr96:
                           if(this.§,""§.length > this.§ f§)
                           {
                              if(!_loc7_)
                              {
                                 _loc3_ = this.§,""§[this.§ f§];
                                 if(_loc6_)
                                 {
                                    if(_loc3_.step == this.§[!2§)
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr125:
                                          param1.activatePowerup();
                                          if(_loc6_ || _loc3_)
                                          {
                                          }
                                          §§goto(addr164);
                                       }
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§ f§);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!_loc7_)
                                       {
                                          _loc4_.§ f§ = _loc5_;
                                       }
                                       §§goto(addr164);
                                    }
                                    addr164:
                                    §§push((_loc4_ = this).§6!§);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       _loc4_.§6!§ = _loc5_;
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr125);
                        }
                        §§push((_loc4_ = this).§@a§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           _loc4_.§@a§ = _loc5_;
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr53);
               }
               §§goto(addr125);
            }
            §§goto(addr53);
         }
         §§goto(addr125);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§1m§ + §]m§ + this.§7!h§() + §]m§ + this.§[7§()));
               if(_loc3_ || _loc2_)
               {
                  addr75:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §7!h§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() + this.§@B§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§@B§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(_loc1_);
                     if(_loc3_ || this)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              addr123:
                              addr119:
                              while(true)
                              {
                                 §§push(_loc1_);
                              }
                              addr119:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        while(_loc4_)
                        {
                           §§goto(addr119);
                        }
                        §§push(§§pop() + this.§@B§[_loc2_].toString());
                     }
                     _loc1_ = §§pop();
                     loop3:
                     while(true)
                     {
                        _loc2_++;
                        addr95:
                        while(_loc4_ && _loc3_)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr95);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr119);
         }
         return §§pop();
      }
      
      private function §[7§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§,""§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,""§.length)
            {
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(_loc4_ || this)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(_loc1_);
                     if(_loc4_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 break;
                              }
                              addr125:
                              while(true)
                              {
                                 §§push(§§pop() + §@!g§);
                              }
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              continue loop1;
                           }
                        }
                        §§push(§§pop() + this.§,""§[_loc2_].toString());
                     }
                     _loc1_ = §§pop();
                     _loc2_++;
                     continue;
                     addr121:
                  }
                  §§goto(addr129);
               }
               §§goto(addr121);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr125);
         }
         return §§pop();
      }
   }
}
