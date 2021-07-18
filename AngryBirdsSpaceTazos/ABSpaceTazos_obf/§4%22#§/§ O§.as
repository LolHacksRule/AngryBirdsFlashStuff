package §4"#§
{
   import §'4§.§^g§;
   import flash.system.Capabilities;
   
   public class § O§
   {
      
      public static const §"1§:String = "@@";
      
      public static const §>e§:String = "@";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"1§ = "@@";
         }
         do
         {
            §>e§ = "@";
         }
         while(!(_loc2_ || § O§));
         
      }
      
      private var §'!D§:String;
      
      private var §"!M§:int;
      
      private var §^§:Number;
      
      private var §;"!§:Number;
      
      protected var §"! §:Boolean;
      
      protected var §9!§:Vector.<§&@§>;
      
      protected var §6?§:Vector.<§`,§>;
      
      private var §-"3§:int;
      
      private var §4"D§:int;
      
      public function § O§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!§ = new Vector.<§&@§>();
            loop0:
            while(true)
            {
               this.§6?§ = new Vector.<§`,§>();
               addr78:
               while(true)
               {
                  super();
                  addr32:
                  if(_loc3_)
                  {
                     return;
                     addr44:
                  }
               }
               while(true)
               {
                  if(!(_loc2_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr60);
      }
      
      public static function initialize(param1:String) : § O§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:§ O§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&@§ = null;
         var _loc9_:§`,§ = null;
         var _loc3_:Array = param1.split(§"1§);
         if(_loc13_ || _loc2_)
         {
            if(_loc3_.length == 3)
            {
               addr54:
               _loc2_ = new § O§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§>e§);
               _loc5_ = _loc3_[2].split(§>e§);
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
                        if(_loc8_ = §&@§.initialize(_loc6_))
                        {
                           if(_loc13_)
                           {
                              _loc2_.§9!§.push(_loc8_);
                           }
                        }
                        continue;
                     }
                     if(!(_loc12_ && § O§))
                     {
                        if(_loc13_ || _loc2_)
                        {
                           if(_loc13_)
                           {
                              _loc10_ = 0;
                              if(!_loc12_)
                              {
                                 addr136:
                                 _loc11_ = _loc5_;
                                 if(!_loc12_)
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
                                    if(_loc9_ = §`,§.initialize(_loc7_))
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc2_.§6?§.push(_loc9_);
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 addr148:
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr136);
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
                     §§goto(addr148);
                  }
                  §§goto(addr175);
               }
            }
            §§goto(addr175);
         }
         §§goto(addr54);
      }
      
      public function get §9"%§() : Boolean
      {
         return this.§"! §;
      }
      
      public function get levelName() : String
      {
         return this.§'!D§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§^§;
      }
      
      protected function get §`!8§() : int
      {
         return this.§"!M§;
      }
      
      public function §3!<§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§"! §)
            {
               if(!(_loc7_ && param1))
               {
                  this.§9!§.push(new §&@§(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §;L§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(!this.§"! §)
            {
               if(!_loc4_)
               {
                  if(this.§6?§.length > 0)
                  {
                     loop2:
                     while(true)
                     {
                        if(this.§6?§[this.§6?§.length - 1].step != param1)
                        {
                           loop0:
                           while(true)
                           {
                              this.§6?§.push(new §`,§(param1,param2,param3));
                              if(_loc5_ || param3)
                              {
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                                 if(!(_loc4_ && param2))
                                 {
                                    §§goto(addr25);
                                 }
                                 continue loop2;
                              }
                              addr101:
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                           addr29:
                        }
                        return;
                     }
                     addr80:
                  }
                  §§goto(addr29);
               }
               §§goto(addr101);
            }
            addr25:
            return;
         }
         §§goto(addr80);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"! § = true;
         }
      }
      
      public function step(param1:§^g§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§&@§ = null;
         var _loc3_:§`,§ = null;
         if(_loc7_ || this)
         {
            if(this.§9!§.length > this.§-"3§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  addr43:
                  _loc2_ = this.§9!§[this.§-"3§];
                  if(_loc7_ || param1)
                  {
                     if(_loc2_.step == this.§`!8§)
                     {
                        if(_loc7_ || this)
                        {
                           param1.slingshot.§'!n§(_loc2_.x,_loc2_.y,_loc2_.§#!x§,_loc2_.angle);
                           if(_loc6_ && this)
                           {
                           }
                           addr117:
                           if(this.§6?§.length > this.§4"D§)
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 addr130:
                                 _loc3_ = this.§6?§[this.§4"D§];
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(_loc3_.step == this.§`!8§)
                                    {
                                       if(_loc7_)
                                       {
                                          param1.activateSpecialPower(_loc3_.§&[§,_loc3_.§-P§);
                                          if(_loc7_)
                                          {
                                             var _loc4_:*;
                                             §§push((_loc4_ = this).§4"D§);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc5_:* = §§pop();
                                             if(_loc7_)
                                             {
                                                _loc4_.§4"D§ = _loc5_;
                                             }
                                             addr174:
                                             §§push((_loc4_ = this).§"!M§);
                                             if(_loc7_ || param1)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             _loc5_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                _loc4_.§"!M§ = _loc5_;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr174);
                              }
                              return;
                           }
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr117);
                  }
                  §§push((_loc4_ = this).§-"3§);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc5_ = §§pop();
                  if(!_loc6_)
                  {
                     _loc4_.§-"3§ = _loc5_;
                  }
                  §§goto(addr117);
               }
               §§goto(addr130);
            }
            §§goto(addr117);
         }
         §§goto(addr43);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + (this.§'!D§ + §"1§ + this.§>!z§() + §"1§ + this.§-5§()));
               if(!_loc2_)
               {
                  addr75:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §>!z§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.§9!§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§9!§.length)
            {
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               if(_loc3_ || _loc2_)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr109:
                              §§push(§§pop() + §>e§);
                           }
                           _loc1_ = §§pop();
                           §§push(_loc1_);
                           addr113:
                        }
                        §§push(§§pop() + this.§9!§[_loc2_].toString());
                     }
                     _loc1_ = §§pop();
                     _loc2_++;
                     continue;
                     addr105:
                  }
                  §§goto(addr113);
               }
               §§goto(addr105);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr109);
         }
         return §§pop();
      }
      
      private function §-5§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§6?§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§6?§.length)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr129:
                           addr125:
                           while(true)
                           {
                              §§push(_loc1_);
                           }
                           addr125:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() + this.§6?§[_loc2_].toString());
                     }
                  }
                  while(true)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_ = §§pop();
                        loop5:
                        while(true)
                        {
                           _loc2_++;
                           addr84:
                           do
                           {
                              if(!_loc4_)
                              {
                                 continue loop5;
                              }
                           }
                           while(!(_loc4_ || _loc2_));
                           
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr125);
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr84);
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
