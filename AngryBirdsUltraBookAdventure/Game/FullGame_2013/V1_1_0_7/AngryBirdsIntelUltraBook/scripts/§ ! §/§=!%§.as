package § ! §
{
   import §=`§.§6!I§;
   import §=`§.§7!V§;
   import §`g§.Sprite;
   
   public class §=!%§
   {
      
      public static const §3!z§:int = 0;
      
      public static const §#,§:int = 1;
      
      public static const §,V§:int = 2;
      
      public static const §2k§:int = 3;
      
      public static const §5+§:int = 4;
      
      public static const §1!y§:int = 5;
      
      public static const §"!<§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!z§ = 0;
            while(true)
            {
               §#,§ = 1;
            }
            addr109:
         }
         while(true)
         {
            §,V§ = 2;
            while(_loc2_ || _loc1_)
            {
               §2k§ = 3;
               for(; _loc2_; §5+§ = 4,do
               {
                  §1!y§ = 5;
                  do
                  {
                     §"!<§ = 6;
                  }
                  while(_loc1_ && _loc2_);
                  
               }
               while(_loc1_ && _loc1_);
               ,if(!(_loc1_ && _loc2_))
               {
                  return;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr109);
               }
            }
         }
      }
      
      private var §]O§:Vector.<§#=§>;
      
      protected var §1H§:§7!V§;
      
      protected var §&!k§:§6!I§;
      
      public function §=!%§(param1:§7!V§, param2:§6!I§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§1H§ = param1;
               loop3:
               while(!(_loc5_ && _loc3_))
               {
                  this.§]O§ = new Vector.<§#=§>();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  addr28:
                  if(_loc4_ || _loc3_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§&!k§ = param2;
                           continue loop3;
                        }
                        addr77:
                        var _loc3_:int = 0;
                        addr37:
                     }
                     else
                     {
                        §§goto(addr77);
                     }
                     while(true)
                     {
                        if(_loc3_ >= §"!<§)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           loop5:
                           while(!(_loc4_ || this))
                           {
                              while(true)
                              {
                                 _loc3_++;
                                 continue loop5;
                              }
                           }
                           continue;
                        }
                        this.§]O§[_loc3_] = new §#=§();
                        §§goto(addr107);
                     }
                     return;
                  }
                  while(true)
                  {
                     §§goto(addr28);
                  }
                  addr63:
                  §§goto(addr37);
               }
            }
         }
         §§goto(addr63);
      }
      
      public function get animationManager() : §7!V§
      {
         return this.§1H§;
      }
      
      public function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#=§ = null;
         if(_loc3_)
         {
            if(this.§]O§)
            {
               §§goto(addr45);
            }
            §§goto(addr67);
         }
         addr45:
         while(this.§]O§.length)
         {
            _loc1_ = this.§]O§.pop();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc2_ && _loc3_))
         {
            addr67:
            this.§]O§ = null;
         }
      }
      
      public function §;4§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§0!L§ = new §0!L§(this.§1H§,this.§&!k§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#=§;
         if(_loc18_ = this.static(param3))
         {
            if(!_loc19_)
            {
               _loc18_.§-M§(_loc17_);
               if(_loc19_ && param3)
               {
               }
               §§goto(addr83);
            }
         }
         else
         {
            _loc17_.dispose();
         }
         addr83:
      }
      
      public function §-M§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>p§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§>p§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§#=§;
         if(_loc17_ = this.static(param2))
         {
            if(!(_loc18_ && param3))
            {
               _loc17_.§-M§(_loc16_);
               if(_loc18_)
               {
               }
               §§goto(addr78);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr78:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>p§
      {
         return new §>p§(this.§1H§,this.§&!k§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§]O§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.static(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function § m§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#=§ = this.static(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  addr42:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function § in§(param1:int) : Sprite
      {
         return this.static(param1).sprite;
      }
      
      public function static(param1:Number) : §#=§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§]O§ != null)
            {
               if(_loc3_)
               {
                  return this.§]O§[param1];
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
            this.§ m§(§3!z§);
         }
         var _loc1_:§#=§ = this.static(§#,§);
         var _loc2_:§#=§ = this.static(§3!z§);
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§<!j§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc3_ && _loc1_);
         
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§#=§ = null;
         for each(_loc3_ in this.§]O§)
         {
            if(!(_loc7_ && param2))
            {
               _loc3_.§53§(param1,param2);
            }
         }
      }
   }
}
