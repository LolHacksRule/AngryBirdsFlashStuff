package §5!k§
{
   import §2_§.§'u§;
   import flash.system.Capabilities;
   
   public class §+!n§
   {
      
      public static const §`-§:String = "@@";
      
      public static const §25§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`-§ = "@@";
         }
         do
         {
            §25§ = "@";
         }
         while(!_loc1_);
         
      }
      
      private var §,3§:String;
      
      private var §&F§:int;
      
      private var §&!&§:Number;
      
      private var §[f§:Number;
      
      protected var §>!'§:Boolean;
      
      protected var §+!7§:Vector.<§try §>;
      
      protected var §!&§:Vector.<§6!a§>;
      
      private var §0!N§:int;
      
      private var §9G§:int;
      
      public function §+!n§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§+!7§ = new Vector.<§try §>();
            while(true)
            {
               this.§!&§ = new Vector.<§6!a§>();
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§,3§ = param1;
                     §§goto(addr75);
                  }
               }
            }
         }
         addr75:
         while(true)
         {
            this.§&!&§ = 1;
            if(!(_loc3_ && this))
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               continue loop2;
            }
         }
         addr70:
      }
      
      public static function initialize(param1:String) : §+!n§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§+!n§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§try § = null;
         var _loc9_:§6!a§ = null;
         var _loc3_:Array = param1.split(§`-§);
         if(_loc13_ || _loc3_)
         {
            if(_loc3_.length == 3)
            {
               addr54:
               _loc2_ = new §+!n§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§25§);
               _loc5_ = _loc3_[2].split(§25§);
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
                        if(_loc8_ = §try §.initialize(_loc6_))
                        {
                           if(!(_loc12_ && _loc3_))
                           {
                              _loc2_.§+!7§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(_loc13_ || _loc2_)
                     {
                        if(_loc13_ || _loc2_)
                        {
                           if(!_loc12_)
                           {
                              _loc10_ = 0;
                              if(_loc13_ || param1)
                              {
                                 _loc11_ = _loc5_;
                                 if(_loc13_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr190:
                                    return _loc2_;
                                    addr186:
                                    addr189:
                                    addr188:
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ = §6!a§.initialize(_loc7_))
                                    {
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          _loc2_.§!&§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr186);
                                 }
                                 addr168:
                              }
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr188);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr168);
                  }
                  §§goto(addr190);
               }
            }
            §§goto(addr190);
         }
         §§goto(addr54);
      }
      
      public function get §;,§() : Boolean
      {
         return this.§>!'§;
      }
      
      public function get §?]§() : String
      {
         return this.§,3§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!&§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§&!&§;
      }
      
      protected function get §"!$§() : int
      {
         return this.§&F§;
      }
      
      public function §^!x§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§>!'§)
            {
               if(!_loc7_)
               {
                  addr23:
                  this.§+!7§.push(new §try §(param1,param2,param3,param4,param5));
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §7!x§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§>!'§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(this.§!&§.length > 0)
                  {
                     if(_loc3_ || this)
                     {
                        §§goto(addr83);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr24);
               }
               addr83:
               if(this.§!&§[this.§!&§.length - 1].step != param1)
               {
                  loop1:
                  while(true)
                  {
                     this.§!&§.push(new §6!a§(param1));
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     addr94:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(!_loc2_)
                  {
                     addr20:
                     return;
                     addr50:
                  }
                  addr24:
               }
               return;
            }
            §§goto(addr20);
         }
         §§goto(addr50);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§>!'§ = true;
         }
      }
      
      public function step(param1:§'u§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§try § = null;
         var _loc3_:§6!a§ = null;
         if(_loc6_ || _loc2_)
         {
            if(this.§+!7§.length > this.§0!N§)
            {
               if(_loc6_ || param1)
               {
                  addr42:
                  _loc2_ = this.§+!7§[this.§0!N§];
                  if(!_loc7_)
                  {
                     if(_loc2_.step == this.§"!$§)
                     {
                        if(_loc6_)
                        {
                           param1.slingshot.§2!A§(_loc2_.x,_loc2_.y,_loc2_.§@!e§,_loc2_.angle);
                           if(_loc7_)
                           {
                           }
                           addr101:
                           if(this.§!&§.length > this.§9G§)
                           {
                              if(_loc6_)
                              {
                                 addr109:
                                 _loc3_ = this.§!&§[this.§9G§];
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(_loc3_.step == this.§"!$§)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          param1.activatePowerup();
                                          if(_loc6_)
                                          {
                                             var _loc4_:*;
                                             §§push((_loc4_ = this).§9G§);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc5_:* = §§pop();
                                             if(_loc6_)
                                             {
                                                _loc4_.§9G§ = _loc5_;
                                             }
                                             addr169:
                                             §§push((_loc4_ = this).§&F§);
                                             if(!(_loc7_ && this))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             _loc5_ = §§pop();
                                             if(_loc6_ || this)
                                             {
                                                _loc4_.§&F§ = _loc5_;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr169);
                              }
                              return;
                           }
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr101);
                  }
                  §§push((_loc4_ = this).§0!N§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc5_ = §§pop();
                  if(_loc6_ || this)
                  {
                     _loc4_.§0!N§ = _loc5_;
                  }
                  §§goto(addr101);
               }
               §§goto(addr109);
            }
            §§goto(addr101);
         }
         §§goto(addr42);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + (this.§,3§ + §`-§ + this.§>[§() + §`-§ + this.§<[§()));
               if(_loc3_)
               {
                  addr55:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §>[§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + this.§+!7§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§+!7§.length)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && this))
                  {
                     if(_loc4_ || _loc1_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() + this.§+!7§[_loc2_].toString());
                        addr129:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(!(_loc3_ && _loc1_))
                        {
                           _loc2_++;
                           while(!(_loc4_ || _loc2_))
                           {
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           _loc1_ = §§pop();
                        }
                        addr128:
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr77);
            }
            else
            {
               §§push(_loc1_);
               if(_loc4_ || this)
               {
                  §§push(§§pop() + §25§);
               }
            }
            §§goto(addr128);
         }
         return §§pop();
      }
      
      private function §<[§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + this.§!&§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§!&§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           addr132:
                           _loc1_ = §§pop();
                           addr133:
                           while(true)
                           {
                              §§push(_loc1_);
                           }
                           addr133:
                        }
                        while(true)
                        {
                           §§push(§§pop() + this.§!&§[_loc2_].toString());
                           §§goto(addr133);
                        }
                        addr110:
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr110);
                     }
                  }
                  while(true)
                  {
                     _loc2_++;
                  }
               }
               while(_loc4_ && this)
               {
                  §§goto(addr133);
               }
               continue;
            }
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + §25§);
            }
            §§goto(addr132);
         }
         return §§pop();
      }
   }
}
