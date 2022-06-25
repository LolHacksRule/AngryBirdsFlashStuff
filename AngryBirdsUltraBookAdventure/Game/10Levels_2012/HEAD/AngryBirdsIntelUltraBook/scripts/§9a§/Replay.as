package §9a§
{
   import §?A§.LevelMain;
   import flash.system.Capabilities;
   
   public class Replay
   {
      
      public static const §1q§:String = "@@";
      
      public static const §[!E§:String = "@";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §1q§ = "@@";
            do
            {
               §[!E§ = "@";
            }
            while(!(_loc1_ || Replay));
            
         }
      }
      
      private var §4!9§:String;
      
      private var §>!e§:int;
      
      private var §<,§:Number;
      
      private var §>2§:Number;
      
      protected var §67§:Boolean;
      
      protected var §;!^§:Vector.<Shot>;
      
      protected var mPowerUps:Vector.<§1^§>;
      
      private var §[E§:int;
      
      private var §`m§:int;
      
      public function Replay(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!^§ = new Vector.<Shot>();
            while(true)
            {
               this.mPowerUps = new Vector.<§1^§>();
               loop1:
               for(; _loc3_ || _loc2_; if(_loc2_ && _loc2_)
               {
                  continue;
               },§§goto(addr59))
               {
                  super();
                  while(true)
                  {
                     this.§4!9§ = param1;
                     while(!(_loc2_ && _loc3_))
                     {
                        continue loop1;
                        this.§<,§ = 1;
                        if(!_loc2_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function initialize(param1:String) : Replay
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:Replay = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Shot = null;
         var _loc9_:§1^§ = null;
         var _loc3_:Array = param1.split(§1q§);
         if(_loc13_)
         {
            if(_loc3_.length == 3)
            {
               addr50:
               _loc2_ = new Replay(_loc3_[0]);
               _loc4_ = _loc3_[1].split(§[!E§);
               _loc5_ = _loc3_[2].split(§[!E§);
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
                        _loc8_ = Shot.initialize(_loc6_);
                        if(_loc13_ || Replay)
                        {
                           if(_loc8_)
                           {
                              if(_loc13_ || param1)
                              {
                                 _loc2_.§;!^§.push(_loc8_);
                              }
                           }
                        }
                        continue;
                     }
                     if(!_loc12_)
                     {
                        if(_loc13_)
                        {
                           if(_loc13_)
                           {
                              _loc10_ = 0;
                              if(_loc13_)
                              {
                                 addr139:
                                 _loc11_ = _loc5_;
                                 if(_loc13_ || Replay)
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       break loop0;
                                    }
                                    addr193:
                                    return _loc2_;
                                    addr189:
                                    addr192:
                                    addr191:
                                 }
                                 while(true)
                                 {
                                    _loc9_ = §1^§.initialize(_loc7_);
                                    if(_loc13_ || _loc2_)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc13_)
                                          {
                                             _loc2_.mPowerUps.push(_loc9_);
                                          }
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 addr166:
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr191);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc10_,_loc11_);
                     §§goto(addr166);
                  }
                  §§goto(addr193);
               }
            }
            §§goto(addr193);
         }
         §§goto(addr50);
      }
      
      public function get §9X§() : Boolean
      {
         return this.§67§;
      }
      
      public function get levelName() : String
      {
         return this.§4!9§;
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§<,§ = param1;
         }
      }
      
      public function get speed() : Number
      {
         return this.§<,§;
      }
      
      protected function get §,6§() : int
      {
         return this.§>!e§;
      }
      
      public function §]!O§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §§push(this.§67§);
            if(!(_loc7_ && param3))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  this.§;!^§.push(new Shot(param1,param2,param3,param4,param5));
               }
            }
         }
      }
      
      public function §0!L§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§67§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  if(this.mPowerUps.length > 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(this.mPowerUps[this.mPowerUps.length - 1].step == param1)
                        {
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr102);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§goto(addr23);
                              }
                           }
                        }
                     }
                     §§goto(addr102);
                  }
                  addr23:
                  §§goto(addr19);
               }
               addr102:
               return;
            }
            §§goto(addr19);
         }
         addr19:
         while(true)
         {
            this.mPowerUps.push(new §1^§(param1));
            if(_loc2_ || this)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§67§ = true;
         }
      }
      
      public function step(param1:LevelMain) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Shot = null;
         var _loc3_:§1^§ = null;
         if(_loc7_)
         {
            if(this.§;!^§.length > this.§[E§)
            {
               if(_loc7_)
               {
                  addr33:
                  _loc2_ = this.§;!^§[this.§[E§];
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc2_.step == this.§,6§)
                     {
                        if(_loc6_)
                        {
                        }
                     }
                     §§goto(addr98);
                  }
                  param1.slingshot.§-!+§(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
                  if(_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = this).§[E§);
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(_loc7_)
                     {
                        _loc4_.§[E§ = _loc5_;
                     }
                  }
                  §§goto(addr98);
               }
               §§goto(addr106);
            }
            addr98:
            if(this.mPowerUps.length > this.§`m§)
            {
               if(!_loc6_)
               {
                  addr106:
                  _loc3_ = this.mPowerUps[this.§`m§];
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc3_.step == this.§,6§)
                     {
                        if(_loc7_ || this)
                        {
                        }
                     }
                     §§goto(addr177);
                  }
                  param1.activatePowerup();
                  if(_loc7_ || param1)
                  {
                     §§push((_loc4_ = this).§`m§);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        _loc4_.§`m§ = _loc5_;
                     }
                  }
               }
               §§goto(addr177);
            }
            addr177:
            §§push((_loc4_ = this).§>!e§);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() + 1);
            }
            _loc5_ = §§pop();
            if(!(_loc6_ && this))
            {
               _loc4_.§>!e§ = _loc5_;
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Capabilities.version.substr(0,3);
         if(_loc2_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(§§pop() + (this.§4!9§ + §1q§ + this.§6!"§() + §1q§ + this.§>>§()));
               if(!_loc3_)
               {
                  _loc1_ = §§pop();
                  addr73:
                  return _loc1_;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §6!"§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + this.§;!^§.length.toString());
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(_loc4_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() >= this.§;!^§.length)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     §§push(_loc1_);
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr133:
                        §§push(§§pop() + §[!E§);
                        loop4:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr138:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() + this.§;!^§[_loc2_].toString());
                                 break;
                              }
                              continue loop4;
                           }
                        }
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                     }
                     addr126:
                  }
                  while(_loc3_)
                  {
                     §§goto(addr138);
                     §§goto(addr126);
                  }
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc3_)
                     {
                     }
                     addr96:
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr96);
                  §§push(int(§§pop()));
               }
               else
               {
                  §§push(_loc1_);
               }
               §§goto(addr133);
            }
            §§goto(addr96);
         }
         return §§pop();
      }
      
      private function §>>§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + this.mPowerUps.length.toString());
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.mPowerUps.length)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr143:
                                    addr138:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                    }
                                    addr138:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              while(!_loc4_)
                              {
                                 §§goto(addr138);
                              }
                              §§push(§§pop() + this.mPowerUps[_loc2_].toString());
                           }
                           _loc1_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr99:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr118:
                                    §§push(int(§§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr119:
                                       while(!_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    addr118:
                                 }
                                 §§goto(addr118);
                              }
                           }
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr119);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr138);
               }
               §§goto(addr99);
            }
            §§goto(addr118);
         }
         return §§pop();
      }
   }
}
