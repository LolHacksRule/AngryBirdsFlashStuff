package §#N§
{
   import §-!`§.Sprite;
   import §=U§.§&!U§;
   import §=U§.§3p§;
   
   public class §<!r§
   {
      
      public static const §;!M§:int = 0;
      
      public static const §<[§:int = 1;
      
      public static const §@!N§:int = 2;
      
      public static const §1N§:int = 3;
      
      public static const §]a§:int = 4;
      
      public static const §0!V§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<!r§))
         {
            §1N§ = 3;
            §]a§ = 4;
            if(_loc2_)
            {
               addr51:
               §0!V§ = 5;
            }
            return;
         }
         §§goto(addr51);
      }
      
      private var §>R§:Vector.<§>M§>;
      
      private var §[!B§:§&!U§;
      
      private var §>!S§:§3p§;
      
      public function §<!r§(param1:§&!U§, param2:§3p§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            super();
            if(!_loc4_)
            {
               this.§[!B§ = param1;
               if(_loc4_ && _loc3_)
               {
               }
               §§goto(addr69);
            }
            this.§>!S§ = param2;
            if(_loc5_)
            {
               this.§>R§ = new Vector.<§>M§>();
            }
         }
         addr69:
         var _loc3_:int = 0;
         while(_loc3_ < §0!V§)
         {
            this.§>R§[_loc3_] = new §>M§();
            if(!(_loc5_ || param1))
            {
               break;
            }
            _loc3_++;
            if(_loc4_ && _loc3_)
            {
               break;
            }
         }
      }
      
      public function get §@!o§() : §&!U§
      {
         return this.§[!B§;
      }
      
      public function get textureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>M§ = null;
         if(_loc3_ || _loc3_)
         {
            if(this.§>R§)
            {
               §§goto(addr50);
            }
            §§goto(addr72);
         }
         addr50:
         while(this.§>R§.length)
         {
            _loc1_ = this.§>R§.pop();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            addr72:
            this.§>R§ = null;
         }
      }
      
      public function §1&§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!r§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§!r§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§>M§;
         if(_loc17_ = this.§7!!§(param2))
         {
            if(_loc18_)
            {
               _loc17_.§1&§(_loc16_);
               if(_loc19_ && param1)
               {
               }
            }
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!r§
      {
         return new §!r§(this.§[!B§,this.§>!S§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>R§.length)
         {
            this.§7!!§(_loc2_).update(param1);
            if(_loc3_)
            {
               _loc2_++;
               if(_loc4_)
               {
                  break;
               }
            }
         }
      }
      
      public function §3!G§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>M§ = this.§7!!§(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr47:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §-!f§(param1:int) : Sprite
      {
         return this.§7!!§(param1).sprite;
      }
      
      public function §7!!§(param1:Number) : §>M§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§>R§ != null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return this.§>R§[param1];
               }
            }
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            this.§3!G§(§;!M§);
         }
         var _loc1_:§>M§ = this.§7!!§(§<[§);
         var _loc2_:§>M§ = this.§7!!§(§;!M§);
         if(!(_loc4_ && _loc1_))
         {
            _loc1_.§,!J§(_loc2_);
            if(_loc3_ || _loc3_)
            {
               _loc2_.sprite.flatten();
            }
         }
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§>M§ = null;
         for each(_loc3_ in this.§>R§)
         {
            if(_loc6_ || param1)
            {
               _loc3_.§4O§(param1,param2);
            }
         }
      }
   }
}
