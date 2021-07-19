package §6"G§
{
   import §3y§.*;
   
   public class §-#C§
   {
      
      public static const §["c§:Function;
      
      public static const §0l§:Function;
      
      public static const §>v§:Function;
      
      public static const §]"0§:Function;
      
      public static const §#t§:Function;
      
      public static const § !^§:Function;
      
      public static const §+#4§:Function;
      
      public static const §9"5§:Function;
      
      public static const §?%§:Function;
      
      private static var §=!h§:§-#C§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §-#C§))
         {
            §["c§ = §3#§.easeIn;
            while(true)
            {
               §0l§ = §9!Z§.easeIn;
               while(!_loc2_)
               {
                  §>v§ = §9!Z§.easeOut;
                  loop2:
                  while(true)
                  {
                     §]"0§ = §9r§.easeOut;
                     while(true)
                     {
                        §#t§ = §9r§.easeIn;
                        loop4:
                        for(; _loc1_ || _loc1_; if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        },§§goto(addr82))
                        {
                           § !^§ = § #P§.easeOut;
                           loop5:
                           while(true)
                           {
                              §+#4§ = § #P§.easeIn;
                              while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr82:
                                 §9"5§ = §&"t§.easeOut;
                                 do
                                 {
                                    §?%§ = §&"t§.easeIn;
                                 }
                                 while(!_loc1_);
                                 
                                 if(_loc1_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected var §9!o§:Vector.<§ #B§>;
      
      protected var §7!q§:Boolean;
      
      protected var §4"q§:Boolean = true;
      
      public function §-#C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§9!o§ = new Vector.<§ #B§>();
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      public static function get §%!E§() : §-#C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§=!h§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr45:
                     §=!h§ = new §-#C§();
                  }
               }
               return §=!h§;
            }
         }
         §§goto(addr45);
      }
      
      public function set §;"8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4"q§ = param1;
         }
      }
      
      public function §##M§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ #B§ = null;
         var _loc1_:* = int(this.§9!o§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!o§[_loc1_];
            if(_loc4_ || _loc1_)
            {
               if(_loc2_.§>h§)
               {
                  loop4:
                  while(true)
                  {
                     this.§9!o§.splice(_loc1_,1);
                     loop5:
                     while(true)
                     {
                        addr72:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr75:
                           addr84:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr75);
                  §§goto(addr84);
               }
               continue;
            }
            §§goto(addr88);
         }
      }
      
      public function §^!H§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : § #B§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            param5 = param5 || §3#§.easeIn;
            var _loc7_:§9Z§;
            (_loc7_ = new §9Z§(param1,param2,param3,param4,param5)).§;"8§ = this.§4"q§;
            if(_loc9_)
            {
               _loc7_.§]!X§ = param6;
               do
               {
                  this.§9!o§.push(_loc7_);
               }
               while(!(_loc9_ || param2));
               
            }
            return _loc7_;
         }
         §§goto(addr29);
      }
      
      public function §^$§(... rest) : § #B§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§ #B§ = null;
         var _loc3_:§[#-§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc8_ && _loc3_))
            {
               _loc4_ = this.§9!o§.indexOf(_loc2_);
               if(!(_loc8_ && _loc2_))
               {
                  this.§9!o§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §[#-§(rest,true);
         if(!(_loc8_ && rest))
         {
            _loc3_.§;"8§ = this.§4"q§;
         }
         do
         {
            this.§9!o§.push(_loc3_);
         }
         while(_loc8_);
         
         return _loc3_;
      }
      
      public function §'#T§(... rest) : § #B§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§ #B§ = null;
         var _loc3_:§[#-§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc7_ && this))
            {
               _loc4_ = this.§9!o§.indexOf(_loc2_);
               if(_loc8_ || _loc3_)
               {
                  this.§9!o§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §[#-§(rest,false);
         if(_loc8_)
         {
            _loc3_.§;"8§ = this.§4"q§;
            do
            {
               this.§9!o§.push(_loc3_);
            }
            while(!_loc8_);
            
         }
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§7!q§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7!q§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.§7!q§)
            {
               if(!(_loc6_ && this))
               {
                  return;
               }
            }
            else if(this.§9!o§.length == 0)
            {
               if(!(_loc6_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:Vector.<§ #B§> = this.§9!o§.concat();
         var _loc3_:§ #B§ = null;
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               break;
            }
            if(§§pop() >= _loc2_.length)
            {
               §§push(int(this.§9!o§.length - 1));
               break;
            }
            _loc3_ = _loc2_[_loc4_];
            if(_loc7_ || _loc3_)
            {
               _loc3_.update(param1);
               if(_loc7_ || _loc2_)
               {
                  _loc4_++;
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            while(_loc5_ >= 0)
            {
               _loc3_ = this.§9!o§[_loc5_];
               if(!(_loc6_ && _loc2_))
               {
                  if(_loc3_.isCompleted)
                  {
                     loop6:
                     while(true)
                     {
                        this.§9!o§.splice(_loc5_,1);
                        addr176:
                        loop4:
                        while(true)
                        {
                           addr147:
                           while(true)
                           {
                              _loc3_.dispose();
                              addr150:
                              addr157:
                              while(_loc6_ && _loc3_)
                              {
                                 continue loop6;
                              }
                              continue loop4;
                           }
                        }
                     }
                     addr161:
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc5_ = §§pop();
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr150);
                     §§goto(addr157);
                  }
                  continue;
               }
               §§goto(addr161);
            }
         }
      }
   }
}
