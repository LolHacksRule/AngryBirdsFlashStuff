package §>!Z§
{
   import § ! §.§5!x§;
   import § ! §.§?b§;
   import §6![§.Sprite;
   
   public class §!u§
   {
      
      public static const §?d§:int = 0;
      
      public static const §%c§:int = 1;
      
      public static const §;W§:int = 2;
      
      public static const §54§:int = 3;
      
      public static const §"!q§:int = 4;
      
      public static const §?!+§:int = 5;
      
      public static const §5k§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?d§ = 0;
            while(true)
            {
               §%c§ = 1;
               addr31:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               return;
               addr38:
            }
         }
         loop1:
         while(true)
         {
            §;W§ = 2;
            loop2:
            while(true)
            {
               §54§ = 3;
               while(_loc1_)
               {
                  §"!q§ = 4;
                  while(!(_loc2_ && _loc2_))
                  {
                     continue loop2;
                     §?!+§ = 5;
                     do
                     {
                        §5k§ = 6;
                     }
                     while(!_loc1_);
                     
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr31);
                  }
               }
               continue loop1;
            }
         }
         §§goto(addr38);
      }
      
      private var §,m§:Vector.<§&""§>;
      
      private var §^!f§:§?b§;
      
      private var §`8§:§5!x§;
      
      public function §!u§(param1:§?b§, param2:§5!x§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§^!f§ = param1;
               loop1:
               while(true)
               {
                  addr30:
                  while(true)
                  {
                     this.§`8§ = param2;
                     continue loop1;
                  }
               }
               if(_loc5_)
               {
                  continue;
               }
               this.§,m§ = new Vector.<§&""§>();
               if(_loc4_)
               {
                  while(false)
                  {
                     §§goto(addr30);
                  }
                  var _loc3_:int = 0;
                  while(true)
                  {
                     if(_loc3_ >= §5k§)
                     {
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§,m§[_loc3_] = new §&""§();
                     }
                     _loc3_++;
                  }
                  return;
                  addr28:
               }
               §§goto(addr34);
            }
         }
         §§goto(addr28);
      }
      
      public function get §5-§() : §?b§
      {
         return this.§^!f§;
      }
      
      public function get §58§() : §5!x§
      {
         return this.§`8§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&""§ = null;
         if(_loc2_ || _loc3_)
         {
            if(this.§,m§)
            {
               §§goto(addr39);
            }
            §§goto(addr71);
         }
         addr39:
         while(this.§,m§.length)
         {
            _loc1_ = this.§,m§.pop();
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
         if(!_loc3_)
         {
            addr71:
            this.§,m§ = null;
         }
      }
      
      public function §-!,§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2_§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§2_§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§&""§;
         if(_loc17_ = this.§5!8§(param2))
         {
            if(!(_loc19_ && param3))
            {
               _loc17_.§-!,§(_loc16_);
               if(_loc18_ || param3)
               {
               }
               §§goto(addr82);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr82:
         return _loc16_;
      }
      
      public function §+!v§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§68§ = new §68§(this.§^!f§,this.§`8§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§&""§;
         if(_loc18_ = this.§5!8§(param3))
         {
            if(!_loc19_)
            {
               _loc18_.§-!,§(_loc17_);
               if(_loc19_ && param1)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2_§
      {
         return new §2_§(this.§^!f§,this.§`8§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,m§.length)
            {
               if(_loc4_ && this)
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
               this.§5!8§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §0!;§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&""§ = this.§5!8§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && param1))
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §2]§(param1:int) : Sprite
      {
         return this.§5!8§(param1).sprite;
      }
      
      public function §5!8§(param1:Number) : §&""§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§,m§ != null)
            {
               if(!_loc2_)
               {
                  return this.§,m§[param1];
               }
            }
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§0!;§(§?d§);
         }
         var _loc1_:§&""§ = this.§5!8§(§%c§);
         var _loc2_:§&""§ = this.§5!8§(§?d§);
         if(!(_loc3_ && this))
         {
            _loc1_.§+!,§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§&""§ = null;
         for each(_loc3_ in this.§,m§)
         {
            if(_loc7_ || param2)
            {
               _loc3_.§7!d§(param1,param2);
            }
         }
      }
   }
}
