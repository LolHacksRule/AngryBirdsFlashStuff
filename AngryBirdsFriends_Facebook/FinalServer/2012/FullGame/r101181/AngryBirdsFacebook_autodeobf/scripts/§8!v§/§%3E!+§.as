package §8!v§
{
   import § I§.*;
   
   public class §>!+§
   {
      
      public static const §6!1§:Function;
      
      public static const §'"'§:Function;
      
      public static const §!!>§:Function;
      
      public static const §;U§:Function;
      
      public static const §19§:Function;
      
      public static const §%%§:Function;
      
      public static const §,"B§:Function;
      
      public static const § !G§:Function;
      
      public static const §?!B§:Function;
      
      private static var §2"<§:§>!+§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6!1§ = §^g§.easeIn;
         }
         loop0:
         while(true)
         {
            §'"'§ = §["5§.easeIn;
            loop1:
            while(true)
            {
               §!!>§ = §["5§.easeOut;
               loop2:
               while(true)
               {
                  §;U§ = §3N§.easeOut;
                  loop3:
                  while(true)
                  {
                     §19§ = §3N§.easeIn;
                     loop4:
                     while(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        §%%§ = §3"D§.easeOut;
                        loop5:
                        while(true)
                        {
                           §,"B§ = §3"D§.easeIn;
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       § !G§ = §>w§.easeOut;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      protected var §77§:Vector.<§+!W§>;
      
      protected var §^!C§:Boolean;
      
      protected var §3"!§:Boolean = true;
      
      public function §>!+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§77§ = new Vector.<§+!W§>();
            do
            {
               super();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public static function get §;"§() : §>!+§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§2"<§);
            if(_loc2_ || §>!+§)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §2"<§ = new §>!+§();
                     addr44:
                     §§push(§2"<§);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public function set §]!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3"!§ = param1;
         }
      }
      
      public function §&7§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+!W§ = null;
         var _loc1_:* = int(this.§77§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§77§[_loc1_];
            if(_loc3_)
            {
               if(_loc2_.§'l§)
               {
                  loop5:
                  while(true)
                  {
                     this.§77§.splice(_loc1_,1);
                     addr92:
                     loop3:
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr76:
                           addr83:
                           while(!(_loc3_ || _loc2_))
                           {
                              continue loop5;
                           }
                           continue loop3;
                        }
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr76);
                  §§goto(addr83);
               }
               continue;
            }
            §§goto(addr87);
         }
      }
      
      public function §^!K§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §+!W§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            param5 = param5 || §^g§.easeIn;
            var _loc6_:§@!3§;
            (_loc6_ = new §@!3§(param1,param2,param3,param4,param5)).§]!]§ = this.§3"!§;
            if(_loc8_)
            {
               this.§77§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr49);
      }
      
      public function §2!z§(... rest) : §+!W§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§'!6§ = null;
         var _loc3_:§>Y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc8_ && _loc2_))
            {
               _loc4_ = this.§77§.indexOf(_loc2_);
               if(!(_loc7_ || rest))
               {
                  continue;
               }
            }
            this.§77§.splice(_loc4_,1);
         }
         _loc3_ = new §>Y§(rest,true);
         if(_loc7_)
         {
            _loc3_.§]!]§ = this.§3"!§;
            do
            {
               this.§77§.push(_loc3_);
            }
            while(!_loc7_);
            
         }
         return _loc3_;
      }
      
      public function §%!p§(... rest) : §+!W§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§'!6§ = null;
         var _loc3_:§>Y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§77§.indexOf(_loc2_);
               if(!(_loc7_ || rest))
               {
                  continue;
               }
            }
            this.§77§.splice(_loc4_,1);
         }
         _loc3_ = new §>Y§(rest,false);
         if(!_loc8_)
         {
            _loc3_.§]!]§ = this.§3"!§;
         }
         do
         {
            this.§77§.push(_loc3_);
         }
         while(_loc8_ && this);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!C§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!C§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§+!W§ = null;
         if(!_loc5_)
         {
            if(this.§^!C§)
            {
               if(!(_loc5_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§77§.length)
         {
            _loc3_ = false;
            if(_loc5_ && _loc3_)
            {
               break;
            }
            (_loc4_ = this.§77§[_loc2_]).update(param1);
            if(!(_loc5_ && _loc3_))
            {
               if(_loc4_.isCompleted)
               {
                  while(true)
                  {
                     this.§77§.splice(_loc2_,1);
                     addr121:
                     loop6:
                     while(true)
                     {
                        _loc4_.dispose();
                        addr112:
                        loop4:
                        while(true)
                        {
                           addr85:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              addr101:
                              addr108:
                              while(_loc5_ && this)
                              {
                                 continue loop6;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr116:
               }
               while(true)
               {
                  _loc2_++;
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr85);
                        }
                        else
                        {
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr101);
                  §§goto(addr108);
               }
               continue;
            }
            §§goto(addr121);
         }
      }
   }
}
