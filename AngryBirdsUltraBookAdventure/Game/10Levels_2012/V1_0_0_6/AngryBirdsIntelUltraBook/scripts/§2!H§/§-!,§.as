package §2!H§
{
   public class §-!,§
   {
      
      public static const §@!0§:String = "linear";
      
      public static const §,!-§:String = "sine_in";
      
      public static const §var §:String = "sine_out";
      
      public static const §&!8§:String = "quad_out";
      
      public static const §7!"§:String = "quad_in";
      
      public static const §;!z§:String = "bounce_out";
      
      public static const §1F§:String = "bounce_in";
      
      public static const § !K§:String = "circular_out";
      
      public static const §>!7§:String = "circular_in";
      
      private static var §6@§:§-!,§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@!0§ = "linear";
            loop0:
            while(true)
            {
               §,!-§ = "sine_in";
               while(true)
               {
                  §var § = "sine_out";
                  while(true)
                  {
                     §&!8§ = "quad_out";
                     addr91:
                     while(_loc1_)
                     {
                     }
                  }
                  addr79:
                  while(!(_loc2_ && _loc2_))
                  {
                     §;!z§ = "bounce_out";
                     loop6:
                     do
                     {
                        §1F§ = "bounce_in";
                        while(!_loc2_)
                        {
                           § !K§ = "circular_out";
                           while(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 §>!7§ = "circular_in";
                                 if(!_loc2_)
                                 {
                                    continue loop6;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr91);
                     }
                     while(!_loc1_);
                     
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §7!"§ = "quad_in";
            §§goto(addr79);
         }
      }
      
      private var §=W§:Vector.<§6X§>;
      
      private var §1i§:Boolean;
      
      private var §6?§:Boolean = true;
      
      public function §-!,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=W§ = new Vector.<§6X§>();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public static function get §7!j§() : §-!,§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§6@§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr39:
                     §6@§ = new §-!,§();
                  }
               }
               return §6@§;
            }
         }
         §§goto(addr39);
      }
      
      public function set §8!u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§6?§ = param1;
         }
      }
      
      public function §#!p§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§6X§ = null;
         var _loc1_:* = int(this.§=W§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=W§[_loc1_];
            if(!(_loc4_ && _loc3_))
            {
               if(_loc2_.§]! §)
               {
                  loop1:
                  while(true)
                  {
                     this.§=W§.splice(_loc1_,1);
                     loop2:
                     while(true)
                     {
                        addr76:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr79:
                           while(_loc3_ || _loc2_)
                           {
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_ || _loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr79);
               }
               continue;
            }
            §§goto(addr88);
         }
      }
      
      public function §,!`§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §6X§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§^'§;
         (_loc6_ = new §^'§(param1,param2,param3,param4,param5)).§8!u§ = this.§6?§;
         if(!_loc7_)
         {
            this.§=W§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §+B§(... rest) : §6X§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§!!1§ = null;
         var _loc3_:§#m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || _loc2_)
            {
               _loc4_ = this.§=W§.indexOf(_loc2_);
               if(_loc8_ || this)
               {
                  this.§=W§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §#m§(rest,true);
         if(!_loc7_)
         {
            _loc3_.§8!u§ = this.§6?§;
            do
            {
               this.§=W§.push(_loc3_);
            }
            while(!_loc8_);
            
         }
         return _loc3_;
      }
      
      public function §>!d§(... rest) : §6X§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§!!1§ = null;
         var _loc3_:§#m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || _loc2_)
            {
               _loc4_ = this.§=W§.indexOf(_loc2_);
               if(!_loc7_)
               {
                  this.§=W§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §#m§(rest,false);
         if(_loc8_)
         {
            _loc3_.§8!u§ = this.§6?§;
         }
         do
         {
            this.§=W§.push(_loc3_);
         }
         while(!_loc8_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§1i§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1i§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§6X§ = null;
         if(!_loc5_)
         {
            if(this.§1i§)
            {
               if(_loc6_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§=W§.length)
         {
            _loc3_ = false;
            if(!(_loc6_ || param1))
            {
               break;
            }
            (_loc4_ = this.§=W§[_loc2_]).update(param1);
            if(!(_loc5_ && _loc2_))
            {
               if(_loc4_.isCompleted)
               {
                  loop1:
                  while(true)
                  {
                     this.§=W§.splice(_loc2_,1);
                     addr126:
                     while(true)
                     {
                        _loc4_.dispose();
                        addr117:
                        while(true)
                        {
                           addr105:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              addr111:
                              addr113:
                              while(_loc5_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc2_++;
                  if(_loc6_ || this)
                  {
                     if(_loc6_ || param1)
                     {
                        if(!_loc5_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr111);
                  §§goto(addr113);
               }
               continue;
            }
            §§goto(addr126);
         }
      }
   }
}
