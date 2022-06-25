package §%!M§
{
   import §1!&§.Sprite;
   import §8!?§.AnimationManager;
   import §8!?§.TextureManager;
   
   public class LevelParticleManager
   {
      
      public static const §1!5§:int = 0;
      
      public static const §`v§:int = 1;
      
      public static const §#!1§:int = 2;
      
      public static const §1!'§:int = 3;
      
      public static const §<i§:int = 4;
      
      public static const §?7§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §1!5§ = 0;
            while(true)
            {
               §`v§ = 1;
               while(true)
               {
                  §#!1§ = 2;
                  addr80:
                  while(!_loc2_)
                  {
                     §1!'§ = 3;
                  }
               }
            }
            addr91:
         }
         loop3:
         while(true)
         {
            §<i§ = 4;
            while(true)
            {
               if(_loc2_ && LevelParticleManager)
               {
                  continue loop3;
               }
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr91);
            }
         }
      }
      
      private var §8!Y§:Vector.<LevelParticleGroup>;
      
      private var §[6§:AnimationManager;
      
      private var §`_§:TextureManager;
      
      public function LevelParticleManager(param1:AnimationManager, param2:TextureManager)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§[6§ = param1;
               addr50:
               while(true)
               {
                  addr39:
                  while(true)
                  {
                     this.§`_§ = param2;
                     addr43:
                     while(!_loc5_)
                     {
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§8!Y§ = new Vector.<LevelParticleGroup>();
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr39);
               }
               §§goto(addr50);
            }
            §§goto(addr43);
         }
         §§push(0);
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || param2)
            {
               if(_loc4_ || param2)
               {
                  if(§§pop() >= §?7§)
                  {
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§8!Y§[_loc3_] = new LevelParticleGroup();
                  }
                  §§push(_loc3_);
               }
               §§push(§§pop() + 1);
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc3_ = §§pop();
         }
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§[6§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LevelParticleGroup = null;
         if(!_loc2_)
         {
            if(this.§8!Y§)
            {
               §§goto(addr46);
            }
            §§goto(addr70);
         }
         addr46:
         while(this.§8!Y§.length)
         {
            _loc1_ = this.§8!Y§.pop();
            if(_loc3_ || this)
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            addr70:
            this.§8!Y§ = null;
         }
      }
      
      public function §5V§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§&!_§ = new §&!_§(this.§[6§,this.§`_§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:LevelParticleGroup = this.§4!^§(param3);
         if(_loc20_ || this)
         {
            if(!_loc18_)
            {
               _loc17_.dispose();
               if(!(_loc19_ && this))
               {
                  if(_loc19_)
                  {
                     addr97:
                     _loc18_.§%!!§(_loc17_);
                     addr101:
                  }
                  return;
               }
               §§goto(addr101);
            }
         }
         §§goto(addr97);
      }
      
      public function §%!!§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8!;§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§8!;§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:LevelParticleGroup = this.§4!^§(param2);
         if(_loc18_ || param2)
         {
            if(!_loc17_)
            {
               _loc16_.dispose();
               if(!_loc19_)
               {
                  if(_loc19_)
                  {
                     addr87:
                     _loc17_.§%!!§(_loc16_);
                     addr91:
                  }
                  else
                  {
                     addr83:
                  }
                  return _loc16_;
               }
               §§goto(addr91);
            }
            §§goto(addr87);
         }
         §§goto(addr83);
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8!;§
      {
         return new §8!;§(this.§[6§,this.§`_§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.§8!Y§.length)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§4!^§(_loc2_).update(param1);
                  }
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
         }
      }
      
      public function §^Z§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelParticleGroup = this.§4!^§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §7!M§(param1:int) : Sprite
      {
         return this.§4!^§(param1).sprite;
      }
      
      public function §4!^§(param1:Number) : LevelParticleGroup
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§8!Y§ != null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return this.§8!Y§[param1];
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
            this.§^Z§(§1!5§);
         }
         var _loc1_:LevelParticleGroup = this.§4!^§(§`v§);
         var _loc2_:LevelParticleGroup = this.§4!^§(§1!5§);
         if(_loc4_ || _loc2_)
         {
            _loc1_.§+0§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LevelParticleGroup = null;
         for each(_loc3_ in this.§8!Y§)
         {
            if(_loc6_)
            {
               _loc3_.§4c§(param1,param2);
            }
         }
      }
   }
}
