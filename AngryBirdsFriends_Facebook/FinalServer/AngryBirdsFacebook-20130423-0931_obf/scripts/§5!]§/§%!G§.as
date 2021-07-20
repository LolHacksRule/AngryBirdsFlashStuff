package §5!]§
{
   import §4!<§.§'!S§;
   import flash.system.Capabilities;
   
   public class §%!G§
   {
      
      public static const §!"B§:String = "@@";
      
      public static const §]u§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §!"B§ = "@@";
            do
            {
               §]u§ = "@";
            }
            while(_loc1_);
            
         }
      }
      
      private var §]@§:String;
      
      private var §6!t§:int;
      
      private var §?E§:Number;
      
      private var §"!M§:Number;
      
      protected var §1X§:Boolean;
      
      protected var §?"@§:Vector.<§>!T§>;
      
      protected var §>""§:Vector.<§""!§>;
      
      private var §'!H§:int;
      
      private var §9!&§:int;
      
      public function §%!G§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§?"@§ = new Vector.<§>!T§>();
         }
         while(true)
         {
            this.§>""§ = new Vector.<§""!§>();
            while(!_loc2_)
            {
               super();
               while(!_loc2_)
               {
                  this.§]@§ = param1;
                  do
                  {
                     this.§?E§ = 1;
                  }
                  while(!_loc3_);
                  
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public static function initialize(param1:String) : §%!G§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§%!G§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§>!T§ = null;
         var _loc9_:§""!§ = null;
         var _loc3_:Array = param1.split(§!"B§);
         if(!_loc12_)
         {
            if(_loc3_.length == 3)
            {
               addr49:
               _loc2_ = new §%!G§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§]u§);
               _loc5_ = _loc3_[2].split(§]u§);
               var _loc10_:int = 0;
               var _loc11_:* = _loc4_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        if(_loc8_ = §>!T§.initialize(_loc6_))
                        {
                           if(_loc13_ || _loc2_)
                           {
                              _loc2_.§?"@§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!_loc12_)
                     {
                        if(!_loc12_)
                        {
                           if(!_loc12_)
                           {
                              _loc10_ = 0;
                              if(!_loc12_)
                              {
                                 _loc11_ = _loc5_;
                                 addr126:
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr165:
                                    return _loc2_;
                                    addr161:
                                    addr164:
                                    addr163:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §""!§.initialize(_loc7_))
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc2_.§>""§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                                 addr148:
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr163);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr148);
                  }
                  §§goto(addr165);
               }
            }
            §§goto(addr165);
         }
         §§goto(addr49);
      }
      
      public function get §6",§() : Boolean
      {
         return this.§1X§;
      }
      
      public function get §3$§() : String
      {
         return this.§]@§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?E§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§?E§;
      }
      
      protected function get §%!X§() : int
      {
         return this.§6!t§;
      }
      
      public function §9"+§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            if(!this.§1X§)
            {
               if(!_loc7_)
               {
                  addr38:
                  this.§?"@§.push(new §>!T§(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §`!H§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§1X§)
            {
               if(_loc3_ || param1)
               {
                  if(this.§>""§.length > 0)
                  {
                     while(true)
                     {
                        if(this.§>""§[this.§>""§.length - 1].step == param1)
                        {
                        }
                        break;
                        addr55:
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr25:
                        return;
                        addr67:
                     }
                     §§goto(addr93);
                  }
                  loop1:
                  while(true)
                  {
                     this.§>""§.push(new §""!§(param1));
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§goto(addr55);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                        addr94:
                     }
                  }
                  §§goto(addr67);
               }
               addr93:
               return;
            }
            §§goto(addr25);
         }
         §§goto(addr94);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§1X§ = true;
         }
      }
      
      public function step(param1:§'!S§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§>!T§ = null;
         var _loc3_:§""!§ = null;
         if(!(_loc6_ && param1))
         {
            if(this.§?"@§.length > this.§'!H§)
            {
               if(!_loc6_)
               {
                  _loc2_ = this.§?"@§[this.§'!H§];
                  if(!_loc6_)
                  {
                     if(_loc2_.step == this.§%!X§)
                     {
                        if(!_loc6_)
                        {
                           param1.slingshot.§;"4§(_loc2_.x,_loc2_.y,_loc2_.§""%§,_loc2_.angle);
                           if(_loc6_ && _loc3_)
                           {
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr97);
                  }
                  var _loc4_:*;
                  §§push((_loc4_ = this).§'!H§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc6_)
                  {
                     _loc4_.§'!H§ = _loc5_;
                  }
                  §§goto(addr97);
               }
               §§goto(addr105);
            }
            addr97:
            if(this.§>""§.length > this.§9!&§)
            {
               if(_loc7_)
               {
                  addr105:
                  _loc3_ = this.§>""§[this.§9!&§];
                  if(!(_loc6_ && param1))
                  {
                     if(_loc3_.step == this.§%!X§)
                     {
                        if(_loc7_)
                        {
                           param1.activatePowerup();
                           if(_loc7_ || _loc2_)
                           {
                           }
                        }
                     }
                     §§goto(addr160);
                  }
                  §§push((_loc4_ = this).§9!&§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc5_ = §§pop();
                  if(_loc7_)
                  {
                     _loc4_.§9!&§ = _loc5_;
                  }
               }
            }
            §§goto(addr160);
         }
         addr160:
         §§push((_loc4_ = this).§6!t§);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() + 1);
         }
         _loc5_ = §§pop();
         if(!_loc6_)
         {
            _loc4_.§6!t§ = _loc5_;
         }
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(!(_loc2_ && this))
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(§§pop() + (this.§]@§ + §!"B§ + this.§4!o§() + §!"B§ + this.§5"J§()));
               if(!_loc2_)
               {
                  addr70:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §4!o§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + this.§?"@§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§?"@§.length)
            {
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 §§push(§§pop() + this.§?"@§[_loc2_].toString());
                                 break;
                              }
                              addr109:
                              while(true)
                              {
                                 §§push(§§pop() + §]u§);
                                 continue loop1;
                              }
                           }
                           break;
                        }
                     }
                     _loc1_ = §§pop();
                  }
                  _loc2_++;
               }
               continue;
            }
            §§push(_loc1_);
            §§goto(addr109);
         }
         return §§pop();
      }
      
      private function §5"J§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || this)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§>""§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§>""§.length)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        addr105:
                        §§push(§§pop() + §]u§);
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr109:
                           while(true)
                           {
                              §§push(_loc1_);
                           }
                        }
                        addr108:
                     }
                     while(true)
                     {
                        §§push(§§pop() + this.§>""§[_loc2_].toString());
                        §§goto(addr109);
                     }
                     addr86:
                  }
                  while(true)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(true)
                        {
                           _loc2_++;
                           addr69:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr109);
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr108);
                     }
                     §§goto(addr109);
                     §§goto(addr86);
                  }
               }
               §§goto(addr69);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr105);
         }
         return §§pop();
      }
   }
}
