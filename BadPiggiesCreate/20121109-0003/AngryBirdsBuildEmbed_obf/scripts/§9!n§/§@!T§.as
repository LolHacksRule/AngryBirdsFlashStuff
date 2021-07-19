package §9!n§
{
   public class §@!T§
   {
      
      public static const §4!m§:String = "linear";
      
      public static const §,!!§:String = "sine_in";
      
      public static const §%[§:String = "sine_out";
      
      public static const §2,§:String = "quad_out";
      
      public static const §2W§:String = "quad_in";
      
      public static const §?c§:String = "bounce_out";
      
      public static const §1H§:String = "bounce_in";
      
      public static const §@d§:String = "circular_out";
      
      public static const §41§:String = "circular_in";
      
      private static var §3C§:§@!T§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%[§ = "sine_out";
            if(!_loc2_)
            {
               §2,§ = "quad_out";
               if(!_loc2_)
               {
                  addr54:
                  §2W§ = "quad_in";
                  if(!_loc2_)
                  {
                     addr59:
                     §?c§ = "bounce_out";
                  }
               }
               §1H§ = "bounce_in";
               if(_loc1_)
               {
                  §@d§ = "circular_out";
                  §41§ = "circular_in";
               }
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr59);
      }
      
      private var §=!H§:Vector.<§;_§>;
      
      private var §`!;§:Boolean;
      
      private var §4!V§:Boolean = true;
      
      public function §@!T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=!H§ = new Vector.<§;_§>();
            if(_loc1_)
            {
               addr26:
               super();
            }
            return;
         }
         §§goto(addr26);
      }
      
      public static function get §`!t§() : §@!T§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§3C§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §3C§ = new §@!T§();
                     addr48:
                     §§push(§3C§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function set §;@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4!V§ = param1;
         }
      }
      
      public function §%!4§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;_§ = null;
         var _loc1_:* = int(this.§=!H§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!H§[_loc1_];
            if(!_loc3_)
            {
               if(_loc2_.§0! §)
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  this.§=!H§.splice(_loc1_,1);
                  if(!(_loc4_ || _loc1_))
                  {
                     continue;
                  }
                  _loc2_.dispose();
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
            }
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
      }
      
      public function §8!"§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §0Y§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§6L§;
         (_loc6_ = new §6L§(param1,param2,param3,param4,param5)).§;@§ = this.§4!V§;
         if(!(_loc7_ && this))
         {
            this.§=!H§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §0!s§(... rest) : §0Y§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§0e§ = null;
         var _loc3_:§'H§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc8_)
            {
               _loc4_ = this.§=!H§.indexOf(_loc2_);
               if(!(_loc8_ && _loc3_))
               {
                  this.§=!H§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §'H§(rest,true);
         if(_loc7_)
         {
            _loc3_.§;@§ = this.§4!V§;
            if(!_loc8_)
            {
               addr94:
               this.§=!H§.push(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr94);
      }
      
      public function §!!5§(... rest) : §0Y§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§0e§ = null;
         var _loc3_:§'H§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc8_ && this))
            {
               _loc4_ = this.§=!H§.indexOf(_loc2_);
               if(_loc8_ && _loc3_)
               {
                  continue;
               }
            }
            this.§=!H§.splice(_loc4_,1);
         }
         _loc3_ = new §'H§(rest,false);
         if(!_loc8_)
         {
            _loc3_.§;@§ = this.§4!V§;
            if(!(_loc8_ && this))
            {
               this.§=!H§.push(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`!;§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`!;§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§;_§ = null;
         if(!_loc6_)
         {
            if(this.§`!;§)
            {
               if(!_loc6_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:* = 0;
            while(_loc2_ < this.§=!H§.length)
            {
               _loc3_ = false;
               if(_loc6_)
               {
                  break;
               }
               (_loc4_ = this.§=!H§[_loc2_]).update(param1);
               if(_loc5_)
               {
                  if(_loc4_.isCompleted)
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     this.§=!H§.splice(_loc2_,1);
                     if(_loc6_ && _loc2_)
                     {
                        continue;
                     }
                     _loc4_.dispose();
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc2_);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc2_ = §§pop();
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                  }
               }
               _loc2_++;
            }
            return;
         }
         addr28:
      }
   }
}
