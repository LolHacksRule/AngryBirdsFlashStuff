package §`F§
{
   public class §,B§
   {
      
      public static const §,Y§:String = "linear";
      
      public static const §"l§:String = "sine_in";
      
      public static const §@R§:String = "sine_out";
      
      public static const §[!F§:String = "quad_out";
      
      public static const §1R§:String = "quad_in";
      
      public static const §5!C§:String = "bounce_out";
      
      public static const §8!4§:String = "bounce_in";
      
      public static const §'§:String = "circular_out";
      
      public static const §;C§:String = "circular_in";
      
      private static var §;R§:§,B§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,B§))
         {
            §"l§ = "sine_in";
            §@R§ = "sine_out";
            if(_loc1_)
            {
               §[!F§ = "quad_out";
               §1R§ = "quad_in";
               if(!_loc2_)
               {
                  addr62:
                  §5!C§ = "bounce_out";
               }
               §8!4§ = "bounce_in";
               if(_loc1_ || §,B§)
               {
                  addr75:
                  §'§ = "circular_out";
               }
               §;C§ = "circular_in";
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr75);
      }
      
      private var §]!7§:Vector.<§4!A§>;
      
      private var §6!§:Boolean;
      
      private var §4v§:Boolean = true;
      
      public function §,B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§]!7§ = new Vector.<§4!A§>();
            if(!(_loc1_ && this))
            {
               super();
            }
         }
      }
      
      public static function get §^n§() : §,B§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§;R§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §;R§ = new §,B§();
                     addr33:
                     §§push(§;R§);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         §§goto(addr33);
      }
      
      public function set §-Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4v§ = param1;
         }
      }
      
      public function §-8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!A§ = null;
         var _loc1_:* = int(this.§]!7§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!7§[_loc1_];
            if(!_loc4_)
            {
               continue;
            }
            if(_loc2_.§?!+§)
            {
               if(_loc4_)
               {
                  this.§]!7§.splice(_loc1_,1);
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
      
      public function §2E§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §?!3§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§9`§;
         (_loc6_ = new §9`§(param1,param2,param3,param4,param5)).§-Q§ = this.§4v§;
         if(!_loc7_)
         {
            this.§]!7§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §!g§(... rest) : §?!3§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§^F§ = null;
         var _loc3_:§<!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§]!7§.indexOf(_loc2_);
               if(_loc8_ || this)
               {
                  this.§]!7§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §<!%§(rest,true);
         if(!_loc7_)
         {
            _loc3_.§-Q§ = this.§4v§;
            if(_loc8_)
            {
               addr95:
               this.§]!7§.push(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr95);
      }
      
      public function §[!1§(... rest) : §?!3§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§^F§ = null;
         var _loc3_:§<!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || this)
            {
               _loc4_ = this.§]!7§.indexOf(_loc2_);
               if(!_loc8_)
               {
                  continue;
               }
            }
            this.§]!7§.splice(_loc4_,1);
         }
         _loc3_ = new §<!%§(rest,false);
         if(!_loc7_)
         {
            _loc3_.§-Q§ = this.§4v§;
            if(!(_loc7_ && _loc3_))
            {
               this.§]!7§.push(_loc3_);
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
            this.§6!§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§6!§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§4!A§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§6!§)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:* = 0;
            while(_loc2_ < this.§]!7§.length)
            {
               _loc3_ = false;
               if(_loc6_ && param1)
               {
                  break;
               }
               (_loc4_ = this.§]!7§[_loc2_]).update(param1);
               if(!(_loc6_ && this))
               {
                  if(_loc4_.isCompleted)
                  {
                     if(!_loc6_)
                     {
                        this.§]!7§.splice(_loc2_,1);
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
