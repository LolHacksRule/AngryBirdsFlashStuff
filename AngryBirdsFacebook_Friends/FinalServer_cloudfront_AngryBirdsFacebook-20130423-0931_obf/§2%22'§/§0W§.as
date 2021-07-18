package §2"'§
{
   import § !t§.*;
   
   public class §0W§
   {
      
      public static const §[!Z§:Function;
      
      public static const §]!t§:Function;
      
      public static const §4!E§:Function;
      
      public static const §'I§:Function;
      
      public static const §"q§:Function;
      
      public static const §8!s§:Function;
      
      public static const §?"Q§:Function;
      
      public static const §7!A§:Function;
      
      public static const §?![§:Function;
      
      private static var §+!Y§:§0W§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §[!Z§ = §7h§.easeIn;
            loop0:
            while(true)
            {
               §]!t§ = §!!P§.easeIn;
               loop1:
               while(true)
               {
                  §4!E§ = §!!P§.easeOut;
                  while(true)
                  {
                     §'I§ = §0",§.easeOut;
                     addr88:
                     while(!(_loc2_ && _loc1_))
                     {
                        §?"Q§ = §9]§.easeIn;
                        loop6:
                        while(true)
                        {
                           §7!A§ = §`!'§.easeOut;
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop6;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      protected var §,4§:Vector.<§'v§>;
      
      protected var §[$§:Boolean;
      
      protected var §-$§:Boolean = true;
      
      public function §0W§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,4§ = new Vector.<§'v§>();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public static function get §&"5§() : §0W§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §0W§))
         {
            §§push(§+!Y§);
            if(!(_loc2_ && §0W§))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §+!Y§ = new §0W§();
                     addr48:
                     §§push(§+!Y§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function set §3!S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§-$§ = param1;
         }
      }
      
      public function §'"=§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'v§ = null;
         var _loc1_:* = int(this.§,4§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,4§[_loc1_];
            if(_loc4_)
            {
               if(_loc2_.§="6§)
               {
                  while(true)
                  {
                     this.§,4§.splice(_loc1_,1);
                     addr88:
                     while(true)
                     {
                        addr76:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr79:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr83:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!(_loc4_ || _loc1_))
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr83);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr88);
               }
               continue;
            }
            §§goto(addr79);
         }
      }
      
      public function §]!r§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §'v§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            param5 = param5 || §7h§.easeIn;
            var _loc6_:§;5§;
            (_loc6_ = new §;5§(param1,param2,param3,param4,param5)).§3!S§ = this.§-$§;
            if(_loc7_)
            {
               this.§,4§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr33);
      }
      
      public function §]">§(... rest) : §'v§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§ "%§ = null;
         var _loc3_:§%!m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc8_)
            {
               _loc4_ = this.§,4§.indexOf(_loc2_);
               if(!(_loc7_ || this))
               {
                  continue;
               }
            }
            this.§,4§.splice(_loc4_,1);
         }
         _loc3_ = new §%!m§(rest,true);
         if(_loc7_ || this)
         {
            _loc3_.§3!S§ = this.§-$§;
         }
         do
         {
            this.§,4§.push(_loc3_);
         }
         while(!_loc7_);
         
         return _loc3_;
      }
      
      public function §%G§(... rest) : §'v§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§ "%§ = null;
         var _loc3_:§%!m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_ || _loc2_)
            {
               _loc4_ = this.§,4§.indexOf(_loc2_);
               if(_loc7_)
               {
                  this.§,4§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §%!m§(rest,false);
         if(!(_loc8_ && _loc2_))
         {
            _loc3_.§3!S§ = this.§-$§;
         }
         do
         {
            this.§,4§.push(_loc3_);
         }
         while(_loc8_ && _loc3_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[$§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[$§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§'v§ = null;
         if(!_loc5_)
         {
            if(this.§[$§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         loop0:
         while(_loc2_ < this.§,4§.length)
         {
            _loc3_ = false;
            if(_loc5_)
            {
               break;
            }
            (_loc4_ = this.§,4§[_loc2_]).update(param1);
            if(_loc6_)
            {
               if(_loc4_.isCompleted)
               {
                  if(_loc6_)
                  {
                     this.§,4§.splice(_loc2_,1);
                  }
                  while(true)
                  {
                     _loc4_.dispose();
                     loop2:
                     while(true)
                     {
                        addr83:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           continue loop2;
                        }
                     }
                     addr74:
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr83);
                  }
               }
               while(true)
               {
                  _loc2_++;
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr104);
               }
               continue;
            }
            §§goto(addr111);
         }
      }
   }
}
