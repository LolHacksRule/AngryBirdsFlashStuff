package §5!1§
{
   import §=,§.*;
   
   public class §"!X§
   {
      
      public static const §"!2§:Function;
      
      public static const §else §:Function;
      
      public static const §='§:Function;
      
      public static const §%!5§:Function;
      
      public static const §=!K§:Function;
      
      public static const §?[§:Function;
      
      public static const §%z§:Function;
      
      public static const §@4§:Function;
      
      public static const §<!e§:Function;
      
      private static var §2I§:§"!X§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §"!X§)
         {
            §"!2§ = §2!D§.easeIn;
            while(true)
            {
               §else § = §5!e§.easeIn;
               loop1:
               for(; _loc2_; while(_loc2_ || §"!X§)
               {
                  loop8:
                  for(; !(_loc1_ && _loc1_); §<!e§ = §=!6§.easeIn,if(!(_loc1_ && _loc1_))
                  {
                     addr41:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §@4§ = §=!6§.easeOut;
                           continue loop8;
                           §§goto(addr41);
                        }
                        addr74:
                     }
                     return;
                  })
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr93);
                  }
               })
               {
                  §='§ = §5!e§.easeOut;
                  while(true)
                  {
                     §%!5§ = §-x§.easeOut;
                     while(!(_loc1_ && §"!X§))
                     {
                        §=!K§ = §-x§.easeIn;
                        while(_loc2_)
                        {
                           §?[§ = §3%§.easeOut;
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §%z§ = §3%§.easeIn;
            §§goto(addr74);
         }
      }
      
      protected var §8o§:Vector.<§&C§>;
      
      protected var §6Q§:Boolean;
      
      protected var § !Z§:Boolean = true;
      
      public function §"!X§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8o§ = new Vector.<§&C§>();
         }
         do
         {
            super();
         }
         while(!(_loc2_ || this));
         
      }
      
      public static function get § s§() : §"!X§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §"!X§)
         {
            §§push(§2I§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §2I§ = new §"!X§();
                     addr59:
                     §§push(§2I§);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         §§goto(addr59);
      }
      
      public function set §,!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ !Z§ = param1;
         }
      }
      
      public function §"!`§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&C§ = null;
         var _loc1_:* = int(this.§8o§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8o§[_loc1_];
            if(!_loc3_)
            {
               if(_loc2_.§<!-§)
               {
                  loop1:
                  while(true)
                  {
                     this.§8o§.splice(_loc1_,1);
                     addr93:
                     while(true)
                     {
                        addr64:
                        while(true)
                        {
                           _loc2_.dispose();
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr67);
               }
               continue;
            }
            §§goto(addr74);
         }
      }
      
      public function §%!;§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §&C§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            param5 = param5 || §2!D§.easeIn;
            var _loc6_:§use §;
            (_loc6_ = new §use §(param1,param2,param3,param4,param5)).§,!P§ = this.§ !Z§;
            if(_loc7_)
            {
               this.§8o§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr23);
      }
      
      public function §=!,§(... rest) : §&C§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§^Q§ = null;
         var _loc3_:§ get§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_ || _loc3_)
            {
               _loc4_ = this.§8o§.indexOf(_loc2_);
               if(_loc7_)
               {
                  this.§8o§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new § get§(rest,true);
         if(_loc7_)
         {
            _loc3_.§,!P§ = this.§ !Z§;
         }
         do
         {
            this.§8o§.push(_loc3_);
         }
         while(!_loc7_);
         
         return _loc3_;
      }
      
      public function §0<§(... rest) : §&C§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§^Q§ = null;
         var _loc3_:§ get§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_ || rest)
            {
               _loc4_ = this.§8o§.indexOf(_loc2_);
               if(!_loc7_)
               {
                  continue;
               }
            }
            this.§8o§.splice(_loc4_,1);
         }
         _loc3_ = new § get§(rest,false);
         if(_loc7_ || rest)
         {
            _loc3_.§,!P§ = this.§ !Z§;
            do
            {
               this.§8o§.push(_loc3_);
            }
            while(_loc8_);
            
         }
         return _loc3_;
      }
      
      public function §99§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6Q§ = true;
         }
      }
      
      public function §^e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6Q§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§&C§ = null;
         if(!_loc5_)
         {
            if(this.§6Q§)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:* = 0;
            while(_loc2_ < this.§8o§.length)
            {
               _loc3_ = false;
               if(_loc5_)
               {
                  break;
               }
               (_loc4_ = this.§8o§[_loc2_]).update(param1);
               if(_loc6_)
               {
                  if(_loc4_.isCompleted)
                  {
                     loop1:
                     while(true)
                     {
                        this.§8o§.splice(_loc2_,1);
                        addr121:
                        while(true)
                        {
                           _loc4_.dispose();
                           addr102:
                           loop6:
                           while(true)
                           {
                              addr78:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 addr89:
                                 addr98:
                                 while(true)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop6;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     _loc2_++;
                     if(_loc6_ || this)
                     {
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr89);
                     §§goto(addr98);
                  }
                  continue;
               }
               §§goto(addr102);
            }
            return;
         }
         addr34:
      }
   }
}
