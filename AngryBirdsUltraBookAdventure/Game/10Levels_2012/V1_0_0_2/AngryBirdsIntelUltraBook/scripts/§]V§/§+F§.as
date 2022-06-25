package §]V§
{
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   import §-w§.§^!&§;
   
   public class §+F§
   {
      
      public static const §1^§:int = 0;
      
      public static const §%!W§:int = 1;
      
      public static const §7!t§:int = 2;
      
      public static const §+!X§:int = 3;
      
      public static const §5!2§:int = 4;
      
      public static const §@L§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1^§ = 0;
         }
         loop0:
         while(true)
         {
            §%!W§ = 1;
            loop1:
            while(true)
            {
               §7!t§ = 2;
               loop2:
               while(true)
               {
                  §+!X§ = 3;
                  while(_loc2_)
                  {
                     §5!2§ = 4;
                     while(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                        §@L§ = 5;
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private var §+Y§:Vector.<§[0§>;
      
      private var § 4§:§^!&§;
      
      private var §;!t§:§,Q§;
      
      public function §+F§(param1:§^!&§, param2:§,Q§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§ 4§ = param1;
               while(!_loc5_)
               {
                  while(true)
                  {
                     this.§;!t§ = param2;
                     do
                     {
                        this.§+Y§ = new Vector.<§[0§>();
                     }
                     while(!(_loc4_ || this));
                     
                     if(_loc4_ || this)
                     {
                        if(true)
                        {
                           var _loc3_:int = 0;
                           while(true)
                           {
                              if(_loc3_ >= §@L§)
                              {
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ && param1))
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§+Y§[_loc3_] = new §[0§();
                              }
                              _loc3_++;
                           }
                        }
                        continue;
                        return;
                     }
                     break;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr52);
         }
      }
      
      public function get animationManager() : §^!&§
      {
         return this.§ 4§;
      }
      
      public function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[0§ = null;
         if(!_loc3_)
         {
            if(this.§+Y§)
            {
               §§goto(addr34);
            }
            §§goto(addr51);
         }
         addr34:
         while(this.§+Y§.length)
         {
            _loc1_ = this.§+Y§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc3_)
         {
            addr51:
            this.§+Y§ = null;
         }
      }
      
      public function §0!>§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§]&§ = new §]&§(this.§ 4§,this.§;!t§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§[0§;
         if(_loc18_ = this.§]!c§(param3))
         {
            if(_loc20_ || this)
            {
               _loc18_.§ K§(_loc17_);
               if(!_loc20_)
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
      
      public function § K§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §1!e§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§1!e§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§[0§;
         if(_loc17_ = this.§]!c§(param2))
         {
            if(_loc18_)
            {
               _loc17_.§ K§(_loc16_);
               if(_loc19_)
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §1!e§
      {
         return new §1!e§(this.§ 4§,this.§;!t§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+Y§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§]!c§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §0#§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[0§ = this.§]!c§(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §7B§(param1:int) : Sprite
      {
         return this.§]!c§(param1).sprite;
      }
      
      public function §]!c§(param1:Number) : §[0§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§+Y§ != null)
            {
               if(_loc3_)
               {
                  §§goto(addr25);
               }
            }
            return null;
         }
         addr25:
         return this.§+Y§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§0#§(§1^§);
         }
         var _loc1_:§[0§ = this.§]!c§(§%!W§);
         var _loc2_:§[0§ = this.§]!c§(§1^§);
         if(!(_loc4_ && _loc1_))
         {
            _loc1_.§%$§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§[0§ = null;
         for each(_loc3_ in this.§+Y§)
         {
            if(!(_loc7_ && this))
            {
               _loc3_.§#;§(param1,param2);
            }
         }
      }
   }
}
