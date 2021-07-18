package §=u§
{
   import §]!K§.*;
   
   public class §!D§
   {
      
      public static const §8"&§:Function;
      
      public static const §=S§:Function;
      
      public static const §7"-§:Function;
      
      public static const §!!R§:Function;
      
      public static const §=!t§:Function;
      
      public static const §3K§:Function;
      
      public static const §>K§:Function;
      
      public static const §<"G§:Function;
      
      public static const § "#§:Function;
      
      private static var §1'§:§!D§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8"&§ = §@!1§.easeIn;
            loop0:
            while(true)
            {
               §=S§ = §=d§.easeIn;
               loop1:
               while(true)
               {
                  §7"-§ = §=d§.easeOut;
                  while(true)
                  {
                     §!!R§ = §,!H§.easeOut;
                     continue loop0;
                     addr100:
                     if(!(_loc2_ || §!D§))
                     {
                        continue;
                     }
                     §3K§ = §%!n§.easeOut;
                     loop6:
                     while(true)
                     {
                        §>K§ = §%!n§.easeIn;
                        while(true)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              addr79:
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              §<"G§ = §+D§.easeOut;
                              continue loop1;
                           }
                           continue loop6;
                           addr36:
                           if(_loc2_ || §!D§)
                           {
                              return;
                           }
                        }
                        addr98:
                        while(!_loc1_)
                        {
                           §§goto(addr100);
                           §§goto(addr79);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §=!t§ = §,!H§.easeIn;
            §§goto(addr98);
         }
      }
      
      protected var §+!j§:Vector.<§ "1§>;
      
      protected var §%"&§:Boolean;
      
      protected var §1"G§:Boolean = true;
      
      public function §!D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§+!j§ = new Vector.<§ "1§>();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public static function get §[!1§() : §!D§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§1'§);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr50:
                     §1'§ = new §!D§();
                  }
               }
               return §1'§;
            }
         }
         §§goto(addr50);
      }
      
      public function set §>!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1"G§ = param1;
         }
      }
      
      public function §+'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ "1§ = null;
         var _loc1_:* = int(this.§+!j§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!j§[_loc1_];
            if(!(_loc4_ && this))
            {
               if(_loc2_.§%S§)
               {
                  if(_loc3_)
                  {
                     this.§+!j§.splice(_loc1_,1);
                     addr92:
                     loop4:
                     while(true)
                     {
                        addr66:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr69:
                           addr71:
                           while(_loc4_)
                           {
                              continue loop4;
                           }
                           continue loop4;
                        }
                     }
                     addr92:
                  }
                  §§goto(addr92);
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!(_loc4_ && _loc2_))
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr69);
                  §§goto(addr71);
               }
               continue;
            }
            §§goto(addr92);
         }
      }
      
      public function §1"<§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : § "1§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            param5 = param5 || §@!1§.easeIn;
            var _loc6_:§%!K§;
            (_loc6_ = new §%!K§(param1,param2,param3,param4,param5)).§>!d§ = this.§1"G§;
            if(!_loc8_)
            {
               this.§+!j§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr23);
      }
      
      public function §"!D§(... rest) : § "1§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§ ">§ = null;
         var _loc3_:§3S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc7_ && _loc2_))
            {
               _loc4_ = this.§+!j§.indexOf(_loc2_);
               if(!_loc7_)
               {
                  this.§+!j§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §3S§(rest,true);
         if(!_loc7_)
         {
            _loc3_.§>!d§ = this.§1"G§;
         }
         do
         {
            this.§+!j§.push(_loc3_);
         }
         while(_loc7_);
         
         return _loc3_;
      }
      
      public function §7!$§(... rest) : § "1§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§ ">§ = null;
         var _loc3_:§3S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc8_)
            {
               _loc4_ = this.§+!j§.indexOf(_loc2_);
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
            }
            this.§+!j§.splice(_loc4_,1);
         }
         _loc3_ = new §3S§(rest,false);
         if(_loc7_)
         {
            _loc3_.§>!d§ = this.§1"G§;
         }
         do
         {
            this.§+!j§.push(_loc3_);
         }
         while(!_loc7_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§%"&§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%"&§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§ "1§ = null;
         if(!(_loc5_ && this))
         {
            if(this.§%"&§)
            {
               if(_loc4_ || _loc2_)
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:* = 0;
            loop0:
            while(_loc2_ < this.§+!j§.length)
            {
               _loc3_ = this.§+!j§[_loc2_];
               if(!(_loc5_ && _loc3_))
               {
                  _loc3_.update(param1);
                  loop1:
                  while(true)
                  {
                     if(_loc3_.isCompleted)
                     {
                        loop2:
                        while(true)
                        {
                           this.§+!j§.splice(_loc2_,1);
                           addr119:
                           while(true)
                           {
                              _loc3_.dispose();
                              loop7:
                              while(true)
                              {
                                 addr90:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc2_ = §§pop();
                                    addr101:
                                    addr105:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop7;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        _loc2_++;
                        if(_loc4_ || _loc2_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              continue loop1;
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr101);
                        §§goto(addr105);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr119);
            }
            return;
         }
         addr36:
      }
   }
}
