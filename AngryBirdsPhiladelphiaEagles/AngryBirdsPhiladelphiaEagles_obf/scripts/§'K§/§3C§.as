package §'K§
{
   public class §3C§
   {
      
      public static const §5t§:String = "linear";
      
      public static const §9!M§:String = "sine_in";
      
      public static const §4Z§:String = "sine_out";
      
      public static const §,k§:String = "quad_out";
      
      public static const §!p§:String = "quad_in";
      
      public static const § !1§:String = "bounce_out";
      
      public static const §'!7§:String = "bounce_in";
      
      public static const §[!-§:String = "circular_out";
      
      public static const §%l§:String = "circular_in";
      
      private static var §5! §:§3C§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §5t§ = "linear";
            §9!M§ = "sine_in";
            while(true)
            {
               §4Z§ = "sine_out";
               loop1:
               while(_loc2_)
               {
                  §,k§ = "quad_out";
                  while(true)
                  {
                     §!p§ = "quad_in";
                     if(_loc2_)
                     {
                        § !1§ = "bounce_out";
                        if(_loc2_ || §3C§)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  §'!7§ = "bounce_in";
                  §[!-§ = "circular_out";
                  do
                  {
                     §%l§ = "circular_in";
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      protected var §=!!§:Vector.<§>#§>;
      
      protected var §4@§:Boolean;
      
      protected var §!y§:Boolean = true;
      
      public function §3C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=!!§ = new Vector.<§>#§>();
            do
            {
               super();
            }
            while(_loc1_);
            
         }
      }
      
      public static function get §>o§() : §3C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§5! §);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr50:
                     §5! § = new §3C§();
                  }
               }
               return §5! §;
            }
         }
         §§goto(addr50);
      }
      
      public function set §&!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§!y§ = param1;
         }
      }
      
      public function §"!6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>#§ = null;
         var _loc1_:* = int(this.§=!!§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!!§[_loc1_];
            if(_loc3_)
            {
               if(_loc2_.§`j§)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     this.§=!!§.splice(_loc1_,1);
                  }
                  while(true)
                  {
                     addr68:
                     while(true)
                     {
                        _loc2_.dispose();
                        addr71:
                        while(true)
                        {
                        }
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr87);
                  }
                  §§goto(addr68);
               }
               continue;
            }
            §§goto(addr71);
         }
      }
      
      public function §<t§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §>#§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§7n§;
         (_loc6_ = new §7n§(param1,param2,param3,param4,param5)).§&!&§ = this.§!y§;
         if(!(_loc7_ && param3))
         {
            this.§=!!§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §=!3§(... rest) : §>#§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§%!4§ = null;
         var _loc3_:§4d§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§=!!§.indexOf(_loc2_);
               if(!_loc8_)
               {
                  this.§=!!§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §4d§(rest,true);
         if(!(_loc8_ && this))
         {
            _loc3_.§&!&§ = this.§!y§;
            do
            {
               this.§=!!§.push(_loc3_);
            }
            while(_loc8_ && _loc3_);
            
         }
         return _loc3_;
      }
      
      public function §<!"§(... rest) : §>#§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§%!4§ = null;
         var _loc3_:§4d§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || _loc3_)
            {
               _loc4_ = this.§=!!§.indexOf(_loc2_);
               if(!_loc7_)
               {
                  this.§=!!§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §4d§(rest,false);
         if(!_loc7_)
         {
            _loc3_.§&!&§ = this.§!y§;
            do
            {
               this.§=!!§.push(_loc3_);
            }
            while(!(_loc8_ || _loc2_));
            
         }
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4@§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4@§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§>#§ = null;
         if(_loc6_)
         {
            if(this.§4@§)
            {
               if(!_loc5_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:* = 0;
            while(_loc2_ < this.§=!!§.length)
            {
               _loc3_ = false;
               if(!_loc6_)
               {
                  break;
               }
               (_loc4_ = this.§=!!§[_loc2_]).update(param1);
               if(_loc6_ || param1)
               {
                  if(_loc4_.isCompleted)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        this.§=!!§.splice(_loc2_,1);
                     }
                     while(true)
                     {
                        _loc4_.dispose();
                        loop2:
                        while(true)
                        {
                           addr78:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr76);
            }
            return;
         }
         addr29:
      }
   }
}
