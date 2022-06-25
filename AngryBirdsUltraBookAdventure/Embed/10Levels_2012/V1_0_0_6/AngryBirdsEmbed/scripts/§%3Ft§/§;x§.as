package §?t§
{
   import §,_§.Sprite;
   import §5`§.§+q§;
   import §5`§.§?y§;
   
   public class §;x§
   {
      
      public static const §,!5§:int = 0;
      
      public static const §4!D§:int = 1;
      
      public static const §;K§:int = 2;
      
      public static const §]+§:int = 3;
      
      public static const §-4§:int = 4;
      
      public static const §-R§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!5§ = 0;
            §4!D§ = 1;
            if(_loc2_)
            {
               §§goto(addr37);
            }
            §§goto(addr50);
         }
         addr37:
         if(!(_loc1_ && _loc2_))
         {
            §]+§ = 3;
            addr50:
            §-4§ = 4;
            if(!_loc1_)
            {
               §-R§ = 5;
            }
         }
      }
      
      private var §@i§:Vector.<§1v§>;
      
      private var §#L§:§+q§;
      
      private var §^S§:§?y§;
      
      public function §;x§(param1:§+q§, param2:§?y§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            if(!_loc5_)
            {
               §§goto(addr27);
            }
            §§goto(addr52);
         }
         addr27:
         this.§#L§ = param1;
         if(!_loc5_)
         {
            this.§^S§ = param2;
            if(_loc4_ || param1)
            {
               this.§@i§ = new Vector.<§1v§>();
               addr52:
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §-R§)
         {
            this.§@i§[_loc3_] = new §1v§();
            if(!(_loc5_ && param1))
            {
               _loc3_++;
               if(!(_loc4_ || param2))
               {
                  break;
               }
            }
         }
      }
      
      public function get § use§() : §+q§
      {
         return this.§#L§;
      }
      
      public function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1v§ = null;
         if(_loc2_)
         {
            if(this.§@i§)
            {
               §§goto(addr34);
            }
            §§goto(addr56);
         }
         addr34:
         while(this.§@i§.length)
         {
            _loc1_ = this.§@i§.pop();
            if(_loc2_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_)
         {
            addr56:
            this.§@i§ = null;
         }
      }
      
      public function §;w§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§#I§ = new §#I§(this.§#L§,this.§^S§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§1v§;
         if(_loc18_ = this.§?O§(param3))
         {
            if(_loc19_ || param2)
            {
               _loc18_.§8"§(_loc17_);
               if(_loc20_ && param1)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §8"§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,i§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§,i§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§1v§;
         if(_loc17_ = this.§?O§(param2))
         {
            if(_loc19_ || param2)
            {
               _loc17_.§8"§(_loc16_);
               if(_loc19_ || param2)
               {
               }
               §§goto(addr83);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr83:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,i§
      {
         return new §,i§(this.§#L§,this.§^S§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@i§.length)
         {
            this.§?O§(_loc2_).update(param1);
            if(!_loc4_)
            {
               _loc2_++;
               if(!_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function §]?§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1v§ = this.§?O§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  addr32:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §[$§(param1:int) : Sprite
      {
         return this.§?O§(param1).sprite;
      }
      
      public function §?O§(param1:Number) : §1v§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§@i§ != null)
            {
               if(!_loc2_)
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return this.§@i§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§]?§(§,!5§);
         }
         var _loc1_:§1v§ = this.§?O§(§4!D§);
         var _loc2_:§1v§ = this.§?O§(§,!5§);
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§3"§(_loc2_);
            if(_loc4_ || _loc2_)
            {
               _loc2_.sprite.flatten();
            }
         }
      }
      
      public function §+C§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§1v§ = null;
         for each(_loc3_ in this.§@i§)
         {
            if(!_loc7_)
            {
               _loc3_.§;!A§(param1,param2);
            }
         }
      }
   }
}
