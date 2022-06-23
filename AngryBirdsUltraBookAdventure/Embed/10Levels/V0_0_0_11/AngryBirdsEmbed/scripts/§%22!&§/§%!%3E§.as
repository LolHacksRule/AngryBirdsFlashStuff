package §"!&§
{
   public class §%!>§
   {
      
      public static const § s§:String = "linear";
      
      public static const §%N§:String = "sine_in";
      
      public static const §1!C§:String = "sine_out";
      
      public static const §4G§:String = "quad_out";
      
      public static const §!!G§:String = "quad_in";
      
      public static const §##§:String = "bounce_out";
      
      public static const §"x§:String = "bounce_in";
      
      public static const §+1§:String = "circular_out";
      
      public static const §>!'§:String = "circular_in";
      
      private static var §6!3§:§%!>§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §%!>§))
         {
            §%N§ = "sine_in";
            §1!C§ = "sine_out";
            if(_loc1_)
            {
               §4G§ = "quad_out";
               §!!G§ = "quad_in";
               if(!_loc2_)
               {
                  addr62:
                  §##§ = "bounce_out";
               }
               §"x§ = "bounce_in";
               if(_loc1_ || §%!>§)
               {
                  addr75:
                  §+1§ = "circular_out";
               }
               §>!'§ = "circular_in";
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr75);
      }
      
      private var §+T§:Vector.<§-!;§>;
      
      private var §;-§:Boolean;
      
      private var §4L§:Boolean = true;
      
      public function §%!>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§+T§ = new Vector.<§-!;§>();
            if(!(_loc1_ && this))
            {
               super();
            }
         }
      }
      
      public static function get §-]§() : §%!>§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§6!3§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §6!3§ = new §%!>§();
                     addr33:
                     §§push(§6!3§);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         §§goto(addr33);
      }
      
      public function set §9V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4L§ = param1;
         }
      }
      
      public function §-5§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-!;§ = null;
         var _loc1_:* = int(this.§+T§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+T§[_loc1_];
            if(!_loc4_)
            {
               continue;
            }
            if(_loc2_.§ D§)
            {
               if(_loc4_)
               {
                  this.§+T§.splice(_loc1_,1);
                  if(_loc3_)
                  {
                  }
                  addr72:
                  §§push(_loc1_);
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               _loc2_.dispose();
               if(_loc3_)
               {
                  continue;
               }
            }
            §§goto(addr72);
         }
      }
      
      public function §?U§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : § !5§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§^_§;
         (_loc6_ = new §^_§(param1,param2,param3,param4,param5)).§9V§ = this.§4L§;
         if(!_loc7_)
         {
            this.§+T§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §&0§(... rest) : § !5§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§+!3§ = null;
         var _loc3_:§"!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§+T§.indexOf(_loc2_);
               if(_loc8_ || this)
               {
                  this.§+T§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §"!%§(rest,true);
         if(!_loc7_)
         {
            _loc3_.§9V§ = this.§4L§;
            if(_loc8_)
            {
               addr95:
               this.§+T§.push(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr95);
      }
      
      public function §>!,§(... rest) : § !5§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§+!3§ = null;
         var _loc3_:§"!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || this)
            {
               _loc4_ = this.§+T§.indexOf(_loc2_);
               if(!_loc8_)
               {
                  continue;
               }
            }
            this.§+T§.splice(_loc4_,1);
         }
         _loc3_ = new §"!%§(rest,false);
         if(!_loc7_)
         {
            _loc3_.§9V§ = this.§4L§;
            if(!(_loc7_ && _loc3_))
            {
               this.§+T§.push(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§;-§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§;-§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§-!;§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§;-§)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:* = 0;
            while(_loc2_ < this.§+T§.length)
            {
               _loc3_ = false;
               if(_loc6_ && param1)
               {
                  break;
               }
               (_loc4_ = this.§+T§[_loc2_]).update(param1);
               if(!(_loc6_ && this))
               {
                  if(_loc4_.isCompleted)
                  {
                     if(!_loc6_)
                     {
                        this.§+T§.splice(_loc2_,1);
                        if(!_loc6_)
                        {
                           addr100:
                           _loc4_.dispose();
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           §§push(_loc2_);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              continue;
                           }
                        }
                     }
                     §§goto(addr100);
                  }
                  _loc2_++;
                  continue;
               }
               §§goto(addr100);
            }
            return;
         }
         addr38:
      }
   }
}
