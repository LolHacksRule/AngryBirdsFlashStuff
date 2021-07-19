package §&E§
{
   import §'!6§.Sprite;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   
   public class §6!O§
   {
      
      public static const §`U§:int = 0;
      
      public static const §-4§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §;m§:int = 4;
      
      public static const §,G§:int = 5;
      
      public static const §-!!§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`U§ = 0;
         }
         loop0:
         while(true)
         {
            §-4§ = 1;
            do
            {
               PARTICLE_GROUP_BACKGROUND_EFFECTS = 2;
               while(true)
               {
                  PARTICLE_GROUP_GAME_EFFECTS = 3;
                  continue loop0;
               }
            }
            while(_loc1_ && §6!O§);
            
            return;
         }
      }
      
      private var §!"-§:Vector.<§ @§>;
      
      protected var §8"+§:§^!Y§;
      
      protected var §=!2§:§`m§;
      
      public function §6!O§(param1:§^!Y§, param2:§`m§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§8"+§ = param1;
               while(_loc5_)
               {
                  loop2:
                  while(true)
                  {
                     this.§=!2§ = param2;
                     do
                     {
                        this.§!"-§ = new Vector.<§ @§>();
                     }
                     while(_loc4_);
                     
                     if(!_loc4_)
                     {
                        while(false)
                        {
                           continue loop2;
                        }
                        var _loc3_:int = 0;
                        while(true)
                        {
                           if(_loc3_ >= §-!!§)
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              if(_loc5_ || param2)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.§!"-§[_loc3_] = new § @§();
                           }
                           _loc3_++;
                        }
                        return;
                        addr31:
                     }
                     break;
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      public function get animationManager() : §^!Y§
      {
         return this.§8"+§;
      }
      
      public function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ @§ = null;
         if(_loc2_)
         {
            if(this.§!"-§)
            {
               §§goto(addr44);
            }
            §§goto(addr66);
         }
         addr44:
         while(this.§!"-§.length)
         {
            _loc1_ = this.§!"-§.pop();
            if(!_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc2_)
         {
            addr66:
            this.§!"-§ = null;
         }
      }
      
      public function §@6§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§]6§ = new §]6§(this.§8"+§,this.§=!2§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§ @§;
         if(_loc18_ = this.§ !N§(param3))
         {
            if(_loc20_)
            {
               _loc18_.§"!J§(_loc17_);
               if(_loc19_)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §"!J§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0i§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§0i§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§ @§;
         if(_loc17_ = this.§ !N§(param2))
         {
            if(_loc18_ || param2)
            {
               _loc17_.§"!J§(_loc16_);
               if(_loc18_ || param3)
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0i§
      {
         return new §0i§(this.§8"+§,this.§=!2§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§!"-§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               loop1:
               while(_loc3_ && this)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§ !N§(_loc2_).update(param1);
            §§goto(addr58);
         }
      }
      
      public function §4!@§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ @§ = this.§ !N§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  addr42:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function getGroupSprite(param1:int) : Sprite
      {
         return this.§ !N§(param1).sprite;
      }
      
      public function § !N§(param1:Number) : § @§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§!"-§ != null)
            {
               if(!_loc2_)
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return this.§!"-§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            this.§4!@§(§`U§);
         }
         var _loc1_:§ @§ = this.§ !N§(§-4§);
         var _loc2_:§ @§ = this.§ !N§(§`U§);
         if(_loc4_ || _loc3_)
         {
            _loc1_.§#!4§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc3_);
         
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§ @§ = null;
         for each(_loc3_ in this.§!"-§)
         {
            if(!_loc6_)
            {
               _loc3_.§^§(param1,param2);
            }
         }
      }
   }
}
