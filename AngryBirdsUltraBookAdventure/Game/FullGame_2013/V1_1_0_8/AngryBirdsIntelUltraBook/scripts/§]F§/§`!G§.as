package §]F§
{
   import §%K§.*;
   
   public class §`!G§
   {
      
      public static const §-!d§:Function;
      
      public static const §;!?§:Function;
      
      public static const §`!U§:Function;
      
      public static const §-!%§:Function;
      
      public static const §7!Y§:Function;
      
      public static const §<W§:Function;
      
      public static const §<V§:Function;
      
      public static const §<u§:Function;
      
      public static const §[!#§:Function;
      
      private static var §&F§:§`!G§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!d§ = §1e§.easeIn;
            loop0:
            while(true)
            {
               §;!?§ = §#!l§.easeIn;
               loop1:
               while(true)
               {
                  §`!U§ = §#!l§.easeOut;
                  loop2:
                  while(true)
                  {
                     §-!%§ = § D§.easeOut;
                     while(true)
                     {
                        §7!Y§ = § D§.easeIn;
                        loop4:
                        for(; !(_loc2_ && _loc2_); while(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              §<u§ = §+s§.easeOut;
                              loop7:
                              while(!(_loc2_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    §[!#§ = §+s§.easeIn;
                                    if(_loc2_)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr78);
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop1;
                        })
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           §<W§ = §?V§.easeOut;
                           while(true)
                           {
                              §<V§ = §?V§.easeIn;
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      protected var §#!8§:Vector.<§9!A§>;
      
      protected var §9!U§:Boolean;
      
      protected var §[!c§:Boolean = true;
      
      public function §`!G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§#!8§ = new Vector.<§9!A§>();
            do
            {
               super();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function get §[U§() : §`!G§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§&F§);
            if(!(_loc1_ && §`!G§))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr40:
                     §&F§ = new §`!G§();
                  }
               }
               return §&F§;
            }
         }
         §§goto(addr40);
      }
      
      public function set §;!W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[!c§ = param1;
         }
      }
      
      public function §+!Z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9!A§ = null;
         var _loc1_:* = int(this.§#!8§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#!8§[_loc1_];
            if(_loc4_ || _loc2_)
            {
               if(_loc2_.§^!5§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§#!8§.splice(_loc1_,1);
                  }
                  while(true)
                  {
                     addr79:
                     addr60:
                     while(true)
                     {
                        _loc2_.dispose();
                        addr82:
                        while(true)
                        {
                        }
                     }
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr79);
                     }
                     continue loop0;
                     addr77:
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr77);
         }
      }
      
      public function §-]§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §9!A§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            param5 = param5 || §1e§.easeIn;
            var _loc6_:§`Y§;
            (_loc6_ = new §`Y§(param1,param2,param3,param4,param5)).§;!W§ = this.§[!c§;
            if(_loc8_)
            {
               this.§#!8§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr44);
      }
      
      public function §`h§(... rest) : §9!A§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§!Q§ = null;
         var _loc3_:§`!E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_ || rest)
            {
               _loc4_ = this.§#!8§.indexOf(_loc2_);
               if(!(_loc8_ && _loc2_))
               {
                  this.§#!8§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §`!E§(rest,true);
         if(_loc7_)
         {
            _loc3_.§;!W§ = this.§[!c§;
         }
         do
         {
            this.§#!8§.push(_loc3_);
         }
         while(!(_loc7_ || this));
         
         return _loc3_;
      }
      
      public function §5!Y§(... rest) : §9!A§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§!Q§ = null;
         var _loc3_:§`!E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_)
            {
               _loc4_ = this.§#!8§.indexOf(_loc2_);
               if(!(_loc8_ || rest))
               {
                  continue;
               }
            }
            this.§#!8§.splice(_loc4_,1);
         }
         _loc3_ = new §`!E§(rest,false);
         if(_loc8_ || _loc3_)
         {
            _loc3_.§;!W§ = this.§[!c§;
         }
         do
         {
            this.§#!8§.push(_loc3_);
         }
         while(!_loc8_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!U§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!U§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§9!A§ = null;
         if(_loc5_)
         {
            if(this.§9!U§)
            {
               if(_loc5_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§#!8§.length)
         {
            _loc3_ = false;
            if(_loc6_ && this)
            {
               break;
            }
            (_loc4_ = this.§#!8§[_loc2_]).update(param1);
            if(_loc5_ || this)
            {
               if(_loc4_.isCompleted)
               {
                  loop1:
                  while(true)
                  {
                     this.§#!8§.splice(_loc2_,1);
                     addr130:
                     while(true)
                     {
                        _loc4_.dispose();
                        addr121:
                        while(true)
                        {
                           addr89:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc2_++;
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || this)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr110);
                  §§goto(addr110);
               }
               continue;
            }
            §§goto(addr130);
         }
      }
   }
}
