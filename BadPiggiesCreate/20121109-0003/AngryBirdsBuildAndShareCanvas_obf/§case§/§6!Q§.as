package §case§
{
   import §+!-§.Sprite;
   import §;"7§.§5!O§;
   import §;"7§.§="<§;
   
   public class §6!Q§
   {
      
      public static const §#6§:int = 0;
      
      public static const §;"#§:int = 1;
      
      public static const §!"%§:int = 2;
      
      public static const §+f§:int = 3;
      
      public static const §2!A§:int = 4;
      
      public static const §3E§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#6§ = 0;
            while(true)
            {
               §;"#§ = 1;
               loop1:
               for(; !_loc2_; if(_loc2_ && _loc2_)
               {
                  continue;
               })
               {
                  §!"%§ = 2;
                  while(true)
                  {
                     §+f§ = 3;
                     loop3:
                     while(_loc1_ || _loc1_)
                     {
                        continue loop1;
                        while(true)
                        {
                           §2!A§ = 4;
                           do
                           {
                              §3E§ = 5;
                           }
                           while(!(_loc1_ || §6!Q§));
                           
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private var §<p§:Vector.<§%!'§>;
      
      protected var §#"@§:§5!O§;
      
      protected var §7k§:§="<§;
      
      public function §6!Q§(param1:§5!O§, param2:§="<§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§#"@§ = param1;
               addr57:
               if(_loc4_ && param1)
               {
                  continue;
               }
               this.§<p§ = new Vector.<§%!'§>();
               if(!_loc4_)
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§7k§ = param2;
                        addr40:
                        addr69:
                        while(_loc5_ || _loc3_)
                        {
                           §§goto(addr57);
                        }
                        while(true)
                        {
                           continue loop2;
                           §§goto(addr40);
                        }
                     }
                  }
                  var _loc3_:int = 0;
                  while(true)
                  {
                     if(_loc3_ >= §3E§)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§<p§[_loc3_] = new §%!'§();
                        while(true)
                        {
                           _loc3_++;
                        }
                        addr108:
                     }
                     while(_loc4_)
                     {
                        §§goto(addr108);
                     }
                  }
                  return;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr69);
      }
      
      public function get §00§() : §5!O§
      {
         return this.§#"@§;
      }
      
      public function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%!'§ = null;
         if(!_loc3_)
         {
            if(this.§<p§)
            {
               §§goto(addr24);
            }
            §§goto(addr66);
         }
         addr24:
         while(this.§<p§.length)
         {
            _loc1_ = this.§<p§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc3_))
         {
            addr66:
            this.§<p§ = null;
         }
      }
      
      public function §-"<§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§]"8§ = new §]"8§(this.§#"@§,this.§7k§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§%!'§;
         if(_loc18_ = this.§3!=§(param3))
         {
            if(!(_loc19_ && param1))
            {
               _loc18_.§'p§(_loc17_);
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
      
      public function §'p§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`!E§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§`!E§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§%!'§;
         if(_loc17_ = this.§3!=§(param2))
         {
            if(!(_loc18_ && param1))
            {
               _loc17_.§'p§(_loc16_);
               if(_loc18_ && param2)
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`!E§
      {
         return new §`!E§(this.§#"@§,this.§7k§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§<p§.length)
            {
               if(!_loc3_)
               {
                  break;
               }
               loop1:
               while(_loc3_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§3!=§(_loc2_).update(param1);
            §§goto(addr68);
         }
      }
      
      public function § "%§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%!'§ = this.§3!=§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §#!D§(param1:int) : Sprite
      {
         return this.§3!=§(param1).sprite;
      }
      
      public function §3!=§(param1:Number) : §%!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§<p§ != null)
            {
               if(!_loc2_)
               {
                  §§goto(addr50);
               }
            }
            return null;
         }
         addr50:
         return this.§<p§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            this.§ "%§(§#6§);
         }
         var _loc1_:§%!'§ = this.§3!=§(§;"#§);
         var _loc2_:§%!'§ = this.§3!=§(§#6§);
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.§%>§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc4_);
         
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§%!'§ = null;
         for each(_loc3_ in this.§<p§)
         {
            if(!(_loc7_ && param1))
            {
               _loc3_.§8!l§(param1,param2);
            }
         }
      }
   }
}
