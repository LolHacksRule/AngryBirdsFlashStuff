package §]!4§
{
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   import §6!D§.§[t§;
   
   public class §^!f§
   {
      
      public static const §6d§:int = 0;
      
      public static const §?i§:int = 1;
      
      public static const §4N§:int = 2;
      
      public static const §>"F§:int = 3;
      
      public static const §?y§:int = 4;
      
      public static const §]"9§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §^!f§))
         {
            §6d§ = 0;
         }
         loop0:
         while(true)
         {
            §?i§ = 1;
            do
            {
               §4N§ = 2;
               loop2:
               do
               {
                  §>"F§ = 3;
                  while(_loc1_)
                  {
                     §?y§ = 4;
                     while(_loc1_ || _loc1_)
                     {
                        §]"9§ = 5;
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
               while(!(_loc1_ || §^!f§));
               
            }
            while(_loc2_);
            
            return;
         }
      }
      
      private var §0"2§:Vector.<§"!t§>;
      
      protected var §]!V§:§[t§;
      
      protected var § !@§:§0Y§;
      
      public function §^!f§(param1:§[t§, param2:§0Y§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§]!V§ = param1;
               loop1:
               while(_loc5_ || this)
               {
                  while(true)
                  {
                     loop3:
                     do
                     {
                        this.§ !@§ = param2;
                        while(_loc5_)
                        {
                           this.§0"2§ = new Vector.<§"!t§>();
                           if(_loc5_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(false);
                     
                     var _loc3_:int = 0;
                     while(true)
                     {
                        if(_loc3_ >= §]"9§)
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§0"2§[_loc3_] = new §"!t§();
                        }
                        _loc3_++;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get animationManager() : §[t§
      {
         return this.§]!V§;
      }
      
      public function get textureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§"!t§ = null;
         if(!_loc2_)
         {
            if(this.§0"2§)
            {
               §§goto(addr45);
            }
            §§goto(addr67);
         }
         addr45:
         while(this.§0"2§.length)
         {
            _loc1_ = this.§0"2§.pop();
            if(_loc3_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            addr67:
            this.§0"2§ = null;
         }
      }
      
      public function §4!P§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§>h§ = new §>h§(this.§]!V§,this.§ !@§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§"!t§;
         if(_loc18_ = this.§]"8§(param3))
         {
            if(_loc20_ || param2)
            {
               _loc18_.§;!u§(_loc17_);
               if(_loc19_ && param2)
               {
               }
               §§goto(addr88);
            }
         }
         else
         {
            _loc17_.dispose();
         }
         addr88:
      }
      
      public function §;!u§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'G§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§'G§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§"!t§;
         if(_loc17_ = this.§]"8§(param2))
         {
            if(!(_loc19_ && param3))
            {
               _loc17_.§;!u§(_loc16_);
               if(_loc19_)
               {
               }
               §§goto(addr77);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr77:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'G§
      {
         return new §'G§(this.§]!V§,this.§ !@§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§0"2§.length)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
            }
            else
            {
               this.§]"8§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §2!_§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"!t§ = this.§]"8§(param1);
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  addr43:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function getGroupSprite(param1:int) : Sprite
      {
         return this.§]"8§(param1).sprite;
      }
      
      public function §]"8§(param1:Number) : §"!t§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§0"2§ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  return this.§0"2§[param1];
               }
            }
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§2!_§(§6d§);
         }
         var _loc1_:§"!t§ = this.§]"8§(§?i§);
         var _loc2_:§"!t§ = this.§]"8§(§6d§);
         if(_loc4_ || _loc3_)
         {
            _loc1_.§8!6§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§"!t§ = null;
         for each(_loc3_ in this.§0"2§)
         {
            if(!_loc7_)
            {
               _loc3_.§=![§(param1,param2);
            }
         }
      }
   }
}
