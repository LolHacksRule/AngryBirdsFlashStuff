package §<!0§
{
   import §%a§.*;
   
   public class §%g§
   {
      
      public static const §@!>§:Function;
      
      public static const §3!'§:Function;
      
      public static const §`!S§:Function;
      
      public static const §?W§:Function;
      
      public static const §"!3§:Function;
      
      public static const §#^§:Function;
      
      public static const §0J§:Function;
      
      public static const §7!<§:Function;
      
      public static const §4U§:Function;
      
      private static var §@f§:§%g§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@!>§ = §0h§.easeIn;
            while(true)
            {
               §3!'§ = §`J§.easeIn;
               loop1:
               while(true)
               {
                  §`!S§ = §`J§.easeOut;
                  while(true)
                  {
                     §?W§ = §;#§.easeOut;
                     loop3:
                     while(!(_loc2_ && _loc1_))
                     {
                        §"!3§ = §;#§.easeIn;
                        while(true)
                        {
                           §#^§ = §"!S§.easeOut;
                           addr81:
                           while(_loc1_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               addr58:
               if(_loc1_ || _loc2_)
               {
                  §7!<§ = §@!+§.easeOut;
                  do
                  {
                     §4U§ = §@!+§.easeIn;
                  }
                  while(_loc2_);
                  
                  addr75:
                  if(_loc2_ && §%g§)
                  {
                     while(true)
                     {
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr58);
                           }
                           else
                           {
                              §§goto(addr96);
                           }
                        }
                        break;
                        §§goto(addr75);
                     }
                     §§goto(addr81);
                     addr54:
                  }
                  return;
               }
            }
         }
         while(true)
         {
            §0J§ = §"!S§.easeIn;
            §§goto(addr54);
         }
      }
      
      protected var §>l§:Vector.<§'c§>;
      
      protected var §`!"§:Boolean;
      
      protected var §,s§:Boolean = true;
      
      public function §%g§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>l§ = new Vector.<§'c§>();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function get §'I§() : §%g§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §%g§)
         {
            §§push(§@f§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || §%g§)
                  {
                     addr60:
                     §@f§ = new §%g§();
                  }
               }
               return §@f§;
            }
         }
         §§goto(addr60);
      }
      
      public function set §[!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,s§ = param1;
         }
      }
      
      public function §77§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'c§ = null;
         var _loc1_:* = int(this.§>l§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>l§[_loc1_];
            if(_loc4_ || _loc3_)
            {
               if(_loc2_.§8!F§)
               {
                  addr78:
                  while(true)
                  {
                     this.§>l§.splice(_loc1_,1);
                     addr93:
                     while(true)
                     {
                        addr71:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr74:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr78:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr78);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr93);
               }
               continue;
            }
            §§goto(addr78);
         }
      }
      
      public function §5!0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §'c§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            param5 = param5 || §0h§.easeIn;
            var _loc6_:§9!G§;
            (_loc6_ = new §9!G§(param1,param2,param3,param4,param5)).§[!#§ = this.§,s§;
            if(!(_loc7_ && param1))
            {
               this.§>l§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr29);
      }
      
      public function §!!7§(... rest) : §'c§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§`v§ = null;
         var _loc3_:§-z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc8_)
            {
               _loc4_ = this.§>l§.indexOf(_loc2_);
               if(_loc7_)
               {
                  this.§>l§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §-z§(rest,true);
         if(!(_loc8_ && _loc2_))
         {
            _loc3_.§[!#§ = this.§,s§;
         }
         do
         {
            this.§>l§.push(_loc3_);
         }
         while(!(_loc7_ || this));
         
         return _loc3_;
      }
      
      public function §9!Y§(... rest) : §'c§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§`v§ = null;
         var _loc3_:§-z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§>l§.indexOf(_loc2_);
               if(_loc7_)
               {
                  continue;
               }
            }
            this.§>l§.splice(_loc4_,1);
         }
         _loc3_ = new §-z§(rest,false);
         if(_loc8_ || _loc2_)
         {
            _loc3_.§[!#§ = this.§,s§;
            do
            {
               this.§>l§.push(_loc3_);
            }
            while(!(_loc8_ || _loc2_));
            
         }
         return _loc3_;
      }
      
      public function §@0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§`!"§ = true;
         }
      }
      
      public function §,R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!"§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§'c§ = null;
         if(!_loc6_)
         {
            if(this.§`!"§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§>l§.length)
         {
            _loc3_ = false;
            if(!_loc5_)
            {
               break;
            }
            (_loc4_ = this.§>l§[_loc2_]).update(param1);
            if(_loc5_)
            {
               if(_loc4_.isCompleted)
               {
                  loop6:
                  while(true)
                  {
                     this.§>l§.splice(_loc2_,1);
                     loop5:
                     while(true)
                     {
                        _loc4_.dispose();
                        addr84:
                        while(true)
                        {
                           if(_loc6_ && _loc3_)
                           {
                              continue loop6;
                           }
                           addr91:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              addr78:
                              addr80:
                              while(_loc6_)
                              {
                                 continue loop5;
                              }
                              §§goto(addr91);
                           }
                           continue loop5;
                        }
                     }
                  }
                  addr95:
               }
               while(true)
               {
                  _loc2_++;
                  if(_loc5_)
                  {
                     if(_loc5_ || this)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr78);
                  §§goto(addr80);
               }
               continue;
            }
            §§goto(addr95);
         }
      }
   }
}
