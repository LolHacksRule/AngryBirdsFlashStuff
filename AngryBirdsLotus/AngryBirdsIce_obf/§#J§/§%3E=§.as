package §#J§
{
   import §1n§.§,!0§;
   import §1n§.§5#§;
   import §^V§.Sprite;
   
   public class §>=§
   {
      
      public static const §8o§:int = 0;
      
      public static const §8'§:int = 1;
      
      public static const §!!+§:int = 2;
      
      public static const §>!5§:int = 3;
      
      public static const §0,§:int = 4;
      
      public static const §8-§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §8o§ = 0;
         }
         do
         {
            §!!+§ = 2;
            do
            {
               §>!5§ = 3;
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      private var §"=§:Vector.<§+h§>;
      
      private var §<H§:§,!0§;
      
      private var §1y§:§5#§;
      
      public function §>=§(param1:§,!0§, param2:§5#§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            while(true)
            {
               this.§<H§ = param1;
               addr73:
               loop1:
               while(true)
               {
                  addr52:
                  while(true)
                  {
                     this.§1y§ = param2;
                     addr56:
                     while(_loc4_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
            addr76:
         }
         while(true)
         {
            this.§"=§ = new Vector.<§+h§>();
            if(_loc4_ || param1)
            {
               if(_loc4_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr52);
               }
               else
               {
                  §§goto(addr76);
               }
            }
            §§goto(addr56);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= §8-§)
            {
               if(!_loc4_)
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
               this.§"=§[_loc3_] = new §+h§();
            }
            _loc3_++;
         }
      }
      
      public function get §0!§() : §,!0§
      {
         return this.§<H§;
      }
      
      public function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+h§ = null;
         if(!_loc2_)
         {
            if(this.§"=§)
            {
               §§goto(addr35);
            }
            §§goto(addr52);
         }
         addr35:
         while(this.§"=§.length)
         {
            _loc1_ = this.§"=§.pop();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            addr52:
            this.§"=§ = null;
         }
      }
      
      public function §-X§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'b§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§'b§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§+h§;
         if(_loc17_ = this.§[2§(param2))
         {
            if(_loc19_ || param1)
            {
               _loc17_.§-X§(_loc16_);
               if(_loc18_ && this)
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'b§
      {
         return new §'b§(this.§<H§,this.§1y§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§"=§.length)
            {
               if(_loc4_ || param1)
               {
                  break;
               }
               loop1:
               while(!(_loc4_ || this))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§[2§(_loc2_).update(param1);
            §§goto(addr73);
         }
      }
      
      public function §5!5§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+h§ = this.§[2§(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §4!A§(param1:int) : Sprite
      {
         return this.§[2§(param1).sprite;
      }
      
      public function §[2§(param1:Number) : §+h§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§"=§ != null)
            {
               if(!(_loc3_ && param1))
               {
                  return this.§"=§[param1];
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
            this.§5!5§(§8o§);
         }
         var _loc1_:§+h§ = this.§[2§(§8'§);
         var _loc2_:§+h§ = this.§[2§(§8o§);
         if(!_loc3_)
         {
            _loc1_.§29§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(!_loc4_);
         
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§+h§ = null;
         for each(_loc3_ in this.§"=§)
         {
            if(_loc6_)
            {
               _loc3_.§85§(param1,param2);
            }
         }
      }
   }
}
