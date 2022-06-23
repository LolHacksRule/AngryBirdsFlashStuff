package §?!+§
{
   public class §,!G§
   {
      
      public static const §]w§:String = "linear";
      
      public static const §1z§:String = "sine_in";
      
      public static const §6!5§:String = "sine_out";
      
      public static const §,&§:String = "quad_out";
      
      public static const §]d§:String = "quad_in";
      
      public static const §3l§:String = "bounce_out";
      
      public static const §2R§:String = "bounce_in";
      
      public static const §;q§:String = "circular_out";
      
      public static const §5]§:String = "circular_in";
      
      private static var §6[§:§,!G§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1z§ = "sine_in";
            §6!5§ = "sine_out";
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr54);
            }
            §§goto(addr64);
         }
         addr54:
         if(!_loc2_)
         {
            §]d§ = "quad_in";
            if(_loc1_)
            {
               addr64:
               §3l§ = "bounce_out";
            }
            §2R§ = "bounce_in";
         }
         if(!_loc2_)
         {
            §5]§ = "circular_in";
         }
      }
      
      private var §5w§:Vector.<§,!§>;
      
      private var §5F§:Boolean;
      
      private var §[d§:Boolean = true;
      
      public function §,!G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§5w§ = new Vector.<§,!§>();
            if(!_loc1_)
            {
               addr32:
               super();
            }
            return;
         }
         §§goto(addr32);
      }
      
      public static function get §@j§() : §,!G§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§6[§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || §,!G§)
                  {
                     §6[§ = new §,!G§();
                     addr44:
                     §§push(§6[§);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public function set §,!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§[d§ = param1;
         }
      }
      
      public function §3u§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,!§ = null;
         var _loc1_:* = int(this.§5w§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5w§[_loc1_];
            if(!_loc4_)
            {
               if(_loc2_.§'<§)
               {
                  if(!_loc4_)
                  {
                     this.§5w§.splice(_loc1_,1);
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  _loc2_.dispose();
                  if(_loc4_ && this)
                  {
                     continue;
                  }
               }
            }
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
      }
      
      public function §47§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §,!§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§&;§;
         (_loc6_ = new §&;§(param1,param2,param3,param4,param5)).§,!@§ = this.§[d§;
         if(!_loc8_)
         {
            this.§5w§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §2!'§(... rest) : §,!§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§1!"§ = null;
         var _loc3_:§0z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc8_)
            {
               _loc4_ = this.§5w§.indexOf(_loc2_);
               if(!_loc8_)
               {
                  this.§5w§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §0z§(rest,true);
         if(!_loc8_)
         {
            _loc3_.§,!@§ = this.§[d§;
            if(_loc7_ || _loc3_)
            {
               this.§5w§.push(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §=Y§(... rest) : §,!§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§1!"§ = null;
         var _loc3_:§0z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc7_ && _loc2_))
            {
               _loc4_ = this.§5w§.indexOf(_loc2_);
               if(_loc7_)
               {
                  continue;
               }
            }
            this.§5w§.splice(_loc4_,1);
         }
         _loc3_ = new §0z§(rest,false);
         if(_loc8_)
         {
            _loc3_.§,!@§ = this.§[d§;
            if(!(_loc7_ && this))
            {
               addr100:
               this.§5w§.push(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr100);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§5F§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§5F§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§,!§ = null;
         if(_loc5_)
         {
            if(this.§5F§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§5w§.length)
         {
            _loc3_ = false;
            if(_loc6_ && param1)
            {
               break;
            }
            (_loc4_ = this.§5w§[_loc2_]).update(param1);
            if(!_loc6_)
            {
               if(_loc4_.isCompleted)
               {
                  if(!_loc6_)
                  {
                     this.§5w§.splice(_loc2_,1);
                     if(!_loc6_)
                     {
                        addr90:
                        _loc4_.dispose();
                        if(_loc6_)
                        {
                        }
                        addr111:
                        _loc2_++;
                        continue;
                     }
                     §§push(_loc2_);
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc2_ = §§pop();
                     if(_loc6_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr90);
               }
            }
            §§goto(addr90);
         }
      }
   }
}
