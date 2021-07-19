package §`2§
{
   import §2`§.§%!!§;
   import §2`§.§+$§;
   import §3!J§.Sprite;
   
   public class §"w§
   {
      
      public static const §>!X§:int = 0;
      
      public static const §6$§:int = 1;
      
      public static const §9@§:int = 2;
      
      public static const §,§:int = 3;
      
      public static const §>h§:int = 4;
      
      public static const §!_§:int = 5;
      
      public static const §6k§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §"w§))
         {
            §>!X§ = 0;
            loop0:
            while(true)
            {
               §6$§ = 1;
               loop1:
               while(true)
               {
                  §9@§ = 2;
                  loop2:
                  do
                  {
                     §,§ = 3;
                     while(true)
                     {
                        §>h§ = 4;
                        while(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              §!_§ = 5;
                              continue loop1;
                           }
                           continue loop0;
                           if(_loc1_ || §"w§)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc2_);
                  
               }
            }
         }
      }
      
      private var §19§:Vector.<§^!p§>;
      
      private var §'!'§:§+$§;
      
      private var §,%§:§%!!§;
      
      public function §"w§(param1:§+$§, param2:§%!!§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§'!'§ = param1;
               loop1:
               while(true)
               {
                  addr31:
                  while(true)
                  {
                     this.§,%§ = param2;
                     continue loop1;
                  }
               }
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               this.§19§ = new Vector.<§^!p§>();
               if(_loc5_)
               {
                  while(false)
                  {
                     §§goto(addr31);
                  }
                  var _loc3_:int = 0;
                  while(true)
                  {
                     if(_loc3_ >= §6k§)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§19§[_loc3_] = new §^!p§();
                        while(true)
                        {
                           _loc3_++;
                        }
                        addr103:
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr103);
                     }
                  }
                  return;
                  addr29:
               }
               §§goto(addr35);
            }
         }
         §§goto(addr29);
      }
      
      public function get §13§() : §+$§
      {
         return this.§'!'§;
      }
      
      public function get §]!z§() : §%!!§
      {
         return this.§,%§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^!p§ = null;
         if(!(_loc3_ && this))
         {
            if(this.§19§)
            {
               §§goto(addr39);
            }
            §§goto(addr66);
         }
         addr39:
         while(this.§19§.length)
         {
            _loc1_ = this.§19§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_)
         {
            addr66:
            this.§19§ = null;
         }
      }
      
      public function §9!@§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`""§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§`""§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§^!p§;
         if(_loc17_ = this.§>!b§(param2))
         {
            if(_loc19_ || param1)
            {
               _loc17_.§9!@§(_loc16_);
               if(_loc18_ && param3)
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
      
      public function §=9§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§ _§ = new § _§(this.§'!'§,this.§,%§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§^!p§;
         if(_loc18_ = this.§>!b§(param3))
         {
            if(!(_loc19_ && param3))
            {
               _loc18_.§9!@§(_loc17_);
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`""§
      {
         return new §`""§(this.§'!'§,this.§,%§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§19§.length)
            {
               if(_loc3_)
               {
                  break;
               }
               loop1:
               while(!(_loc3_ || this))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§>!b§(_loc2_).update(param1);
            §§goto(addr67);
         }
      }
      
      public function §`o§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^!p§ = this.§>!b§(param1);
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
      
      public function §&!§(param1:int) : Sprite
      {
         return this.§>!b§(param1).sprite;
      }
      
      public function §>!b§(param1:Number) : §^!p§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§19§ != null)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr54);
               }
            }
            return null;
         }
         addr54:
         return this.§19§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§`o§(§>!X§);
         }
         var _loc1_:§^!p§ = this.§>!b§(§6$§);
         var _loc2_:§^!p§ = this.§>!b§(§>!X§);
         if(!_loc4_)
         {
            _loc1_.§#""§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc4_ && this);
         
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§^!p§ = null;
         for each(_loc3_ in this.§19§)
         {
            if(_loc6_)
            {
               _loc3_.§5_§(param1,param2);
            }
         }
      }
   }
}
