package §@!-§
{
   import §#!,§.Sprite;
   import §,!7§.AnimationManager;
   import §,!7§.TextureManager;
   
   public class LevelParticleManager
   {
      
      public static const §]!F§:int = 0;
      
      public static const §%F§:int = 1;
      
      public static const §;3§:int = 2;
      
      public static const §9!H§:int = 3;
      
      public static const §+!K§:int = 4;
      
      public static const § true§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]!F§ = 0;
         }
         loop0:
         while(true)
         {
            §%F§ = 1;
            loop1:
            while(true)
            {
               §;3§ = 2;
               while(true)
               {
                  §9!H§ = 3;
                  continue loop1;
                  addr58:
                  while(_loc1_ || _loc2_)
                  {
                     § true§ = 5;
                     if(_loc1_ || LevelParticleManager)
                     {
                        addr34:
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private var §>!Z§:Vector.<LevelParticleGroup>;
      
      private var §,!%§:AnimationManager;
      
      private var §7!`§:TextureManager;
      
      public function LevelParticleManager(param1:AnimationManager, param2:TextureManager)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§,!%§ = param1;
               while(true)
               {
                  addr45:
                  addr36:
                  while(true)
                  {
                     this.§7!`§ = param2;
                     continue loop0;
                  }
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  if(true)
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr45);
               }
            }
         }
         while(true)
         {
            this.§>!Z§ = new Vector.<LevelParticleGroup>();
            if(!_loc4_)
            {
               §§goto(addr36);
            }
            §§goto(addr49);
         }
         addr75:
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || param2)
            {
               if(!(_loc4_ && param2))
               {
                  if(!_loc4_)
                  {
                     if(§§pop() >= § true§)
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§>!Z§[_loc3_] = new LevelParticleGroup();
                     }
                     §§push(_loc3_);
                  }
                  §§push(§§pop() + 1);
               }
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
         }
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§,!%§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LevelParticleGroup = null;
         if(_loc3_)
         {
            if(this.§>!Z§)
            {
               §§goto(addr46);
            }
            §§goto(addr70);
         }
         addr46:
         while(this.§>!Z§.length)
         {
            _loc1_ = this.§>!Z§.pop();
            if(_loc3_ || _loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            addr70:
            this.§>!Z§ = null;
         }
      }
      
      public function §2!9§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§5^§ = new §5^§(this.§,!%§,this.§7!`§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:LevelParticleGroup = this.§7K§(param3);
         if(!_loc20_)
         {
            if(!_loc18_)
            {
               _loc17_.dispose();
               if(_loc19_)
               {
                  if(!_loc19_)
                  {
                     addr86:
                     _loc18_.§?`§(_loc17_);
                     addr90:
                  }
                  return;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr86);
      }
      
      public function §?`§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § !_§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§ !_§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:LevelParticleGroup = this.§7K§(param2);
         if(_loc18_ || this)
         {
            if(!_loc17_)
            {
               _loc16_.dispose();
               if(_loc18_)
               {
                  if(!(_loc18_ || param1))
                  {
                     addr92:
                     _loc17_.§?`§(_loc16_);
                     addr96:
                  }
                  else
                  {
                     addr88:
                  }
                  return _loc16_;
               }
               §§goto(addr96);
            }
            §§goto(addr92);
         }
         §§goto(addr88);
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § !_§
      {
         return new § !_§(this.§,!%§,this.§7!`§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
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
            if(!(_loc4_ && this))
            {
               if(§§pop() >= this.§>!Z§.length)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc3_ || _loc2_))
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§7K§(_loc2_).update(param1);
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
            }
            §§goto(addr83);
         }
      }
      
      public function §switch§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelParticleGroup = this.§7K§(param1);
         if(!(_loc4_ && param1))
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
      
      public function §&S§(param1:int) : Sprite
      {
         return this.§7K§(param1).sprite;
      }
      
      public function §7K§(param1:Number) : LevelParticleGroup
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§>!Z§ != null)
            {
               if(_loc3_)
               {
                  return this.§>!Z§[param1];
               }
            }
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§switch§(§]!F§);
         }
         var _loc1_:LevelParticleGroup = this.§7K§(§%F§);
         var _loc2_:LevelParticleGroup = this.§7K§(§]!F§);
         if(_loc3_)
         {
            _loc1_.§=!+§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(_loc4_);
            
         }
      }
      
      public function §6!H§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LevelParticleGroup = null;
         for each(_loc3_ in this.§>!Z§)
         {
            if(!_loc7_)
            {
               _loc3_.§,a§(param1,param2);
            }
         }
      }
   }
}
