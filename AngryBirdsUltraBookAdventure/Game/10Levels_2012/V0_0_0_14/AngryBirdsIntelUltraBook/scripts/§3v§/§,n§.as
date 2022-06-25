package §3v§
{
   import §,6§.§!o§;
   import §,6§.§>N§;
   import §9E§.Sprite;
   
   public class §,n§
   {
      
      public static const §'!n§:int = 0;
      
      public static const §implements§:int = 1;
      
      public static const §?J§:int = 2;
      
      public static const §9!&§:int = 3;
      
      public static const §0,§:int = 4;
      
      public static const §6[§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'!n§ = 0;
            loop0:
            while(true)
            {
               §implements§ = 1;
               while(true)
               {
                  §?J§ = 2;
                  while(_loc2_)
                  {
                     while(!(_loc1_ && _loc2_))
                     {
                        §0,§ = 4;
                        do
                        {
                           §6[§ = 5;
                        }
                        while(_loc1_);
                        
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              return;
                              addr49:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §9!&§ = 3;
            §§goto(addr69);
         }
         §§goto(addr49);
      }
      
      private var §^!j§:Vector.<§>!7§>;
      
      private var §'@§:§>N§;
      
      private var §3!L§:§!o§;
      
      public function §,n§(param1:§>N§, param2:§!o§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§'@§ = param1;
               loop1:
               while(true)
               {
                  addr37:
                  while(true)
                  {
                     this.§3!L§ = param2;
                     loop3:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           this.§^!j§ = new Vector.<§>!7§>();
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        var _loc3_:int = 0;
                        while(true)
                        {
                           if(_loc3_ >= §6[§)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 break;
                              }
                              loop6:
                              while(!(_loc4_ || param2))
                              {
                                 while(true)
                                 {
                                    _loc3_++;
                                    continue loop6;
                                 }
                              }
                              continue;
                           }
                           this.§^!j§[_loc3_] = new §>!7§();
                           §§goto(addr107);
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function get animationManager() : §>N§
      {
         return this.§'@§;
      }
      
      public function get textureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>!7§ = null;
         if(_loc3_)
         {
            if(this.§^!j§)
            {
               §§goto(addr35);
            }
            §§goto(addr52);
         }
         addr35:
         while(this.§^!j§.length)
         {
            _loc1_ = this.§^!j§.pop();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            addr52:
            this.§^!j§ = null;
         }
      }
      
      public function §[!3§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§,!B§ = new §,!B§(this.§'@§,this.§3!L§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§>!7§;
         if(_loc18_ = this.§>!R§(param3))
         {
            if(!_loc20_)
            {
               _loc18_.§=!K§(_loc17_);
               if(_loc20_)
               {
               }
               §§goto(addr77);
            }
         }
         else
         {
            _loc17_.dispose();
         }
         addr77:
      }
      
      public function §=!K§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §6Q§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§6Q§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§>!7§;
         if(_loc17_ = this.§>!R§(param2))
         {
            if(!(_loc19_ && this))
            {
               _loc17_.§=!K§(_loc16_);
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §6Q§
      {
         return new §6Q§(this.§'@§,this.§3!L§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§^!j§.length)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               loop1:
               while(_loc4_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§>!R§(_loc2_).update(param1);
            §§goto(addr72);
         }
      }
      
      public function §=!+§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>!7§ = this.§>!R§(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §`!%§(param1:int) : Sprite
      {
         return this.§>!R§(param1).sprite;
      }
      
      public function §>!R§(param1:Number) : §>!7§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§^!j§ != null)
            {
               if(!_loc2_)
               {
                  return this.§^!j§[param1];
               }
            }
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            this.§=!+§(§'!n§);
         }
         var _loc1_:§>!7§ = this.§>!R§(§implements§);
         var _loc2_:§>!7§ = this.§>!R§(§'!n§);
         if(_loc4_)
         {
            _loc1_.§;!'§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc3_);
         
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§>!7§ = null;
         for each(_loc3_ in this.§^!j§)
         {
            if(!(_loc6_ && param2))
            {
               _loc3_.§>!$§(param1,param2);
            }
         }
      }
   }
}
