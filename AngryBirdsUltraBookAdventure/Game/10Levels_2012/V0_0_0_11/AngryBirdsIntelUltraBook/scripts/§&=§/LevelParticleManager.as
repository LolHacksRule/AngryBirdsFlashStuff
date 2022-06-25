package §&=§
{
   import §,!_§.AnimationManager;
   import §,!_§.TextureManager;
   import §6!7§.Sprite;
   
   public class LevelParticleManager
   {
      
      public static const §^<§:int = 0;
      
      public static const §^![§:int = 1;
      
      public static const §9!@§:int = 2;
      
      public static const §[K§:int = 3;
      
      public static const §#!k§:int = 4;
      
      public static const §-!X§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^<§ = 0;
            loop0:
            while(true)
            {
               §^![§ = 1;
               addr88:
               while(true)
               {
                  §9!@§ = 2;
                  addr83:
                  while(true)
                  {
                     §[K§ = 3;
                  }
                  addr49:
                  if(!_loc1_)
                  {
                     return;
                     addr61:
                  }
               }
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr88);
            }
         }
         §§goto(addr78);
      }
      
      private var §+'§:Vector.<LevelParticleGroup>;
      
      private var §!!]§:AnimationManager;
      
      private var §6! §:TextureManager;
      
      public function LevelParticleManager(param1:AnimationManager, param2:TextureManager)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§!!]§ = param1;
               loop1:
               while(true)
               {
                  addr50:
                  while(true)
                  {
                     this.§6! § = param2;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr50);
         }
         §§push(0);
         if(_loc5_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() >= §-!X§)
               {
                  if(_loc5_ || param2)
                  {
                     break;
                  }
                  loop6:
                  while(!(_loc5_ || _loc3_))
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop6;
                     }
                  }
                  continue;
               }
               this.§+'§[_loc3_] = new LevelParticleGroup();
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ && _loc3_)
                     {
                     }
                     §§goto(addr136);
                  }
               }
            }
            §§goto(addr136);
         }
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§!!]§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LevelParticleGroup = null;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§+'§)
            {
               §§goto(addr50);
            }
            §§goto(addr74);
         }
         addr50:
         while(this.§+'§.length)
         {
            _loc1_ = this.§+'§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc2_)
         {
            addr74:
            this.§+'§ = null;
         }
      }
      
      public function §3_§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§=%§ = new §=%§(this.§!!]§,this.§6! §,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:LevelParticleGroup = this.§!!+§(param3);
         if(!_loc19_)
         {
            if(!_loc18_)
            {
               _loc17_.dispose();
               if(!_loc19_)
               {
                  if(!(_loc20_ || param3))
                  {
                     addr92:
                     _loc18_.§@4§(_loc17_);
                     addr96:
                  }
                  else
                  {
                     addr88:
                  }
                  return;
               }
               §§goto(addr96);
            }
            §§goto(addr92);
         }
         §§goto(addr88);
      }
      
      public function §@4§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0'§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§0'§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:LevelParticleGroup = this.§!!+§(param2);
         if(!_loc19_)
         {
            if(!_loc17_)
            {
               _loc16_.dispose();
               if(_loc19_)
               {
                  addr91:
               }
               return _loc16_;
            }
            if(!(_loc19_ && param3))
            {
               addr87:
               _loc17_.§@4§(_loc16_);
            }
            §§goto(addr91);
         }
         §§goto(addr87);
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0'§
      {
         return new §0'§(this.§!!]§,this.§6! §,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= this.§+'§.length)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  this.§!!+§(_loc2_).update(param1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr78);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr78);
         }
      }
      
      public function §@!X§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelParticleGroup = this.§!!+§(param1);
         if(!(_loc3_ && this))
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
      
      public function §1r§(param1:int) : Sprite
      {
         return this.§!!+§(param1).sprite;
      }
      
      public function §!!+§(param1:Number) : LevelParticleGroup
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§+'§ != null)
            {
               if(_loc2_)
               {
                  §§goto(addr39);
               }
            }
            return null;
         }
         addr39:
         return this.§+'§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§@!X§(§^<§);
         }
         var _loc1_:LevelParticleGroup = this.§!!+§(§^![§);
         var _loc2_:LevelParticleGroup = this.§!!+§(§^<§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.§use §(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:LevelParticleGroup = null;
         for each(_loc3_ in this.§+'§)
         {
            if(!_loc6_)
            {
               _loc3_.§3!U§(param1,param2);
            }
         }
      }
   }
}
