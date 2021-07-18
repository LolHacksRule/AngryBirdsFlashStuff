package § ;§
{
   public class §4N§
   {
      
      public static const §7k§:String = "linear";
      
      public static const §0!+§:String = "sine_in";
      
      public static const §>x§:String = "sine_out";
      
      public static const §;j§:String = "quad_out";
      
      public static const §6!9§:String = "quad_in";
      
      public static const §@T§:String = "bounce_out";
      
      public static const §<x§:String = "bounce_in";
      
      public static const §>!F§:String = "circular_out";
      
      public static const §=!!§:String = "circular_in";
      
      private static var §-!U§:§4N§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7k§ = "linear";
         }
         loop0:
         while(true)
         {
            §0!+§ = "sine_in";
            loop1:
            while(true)
            {
               §>x§ = "sine_out";
               loop2:
               while(true)
               {
                  §;j§ = "quad_out";
                  while(_loc1_)
                  {
                     §6!9§ = "quad_in";
                     loop4:
                     while(!_loc2_)
                     {
                        §@T§ = "bounce_out";
                        loop5:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §<x§ = "bounce_in";
                              while(!_loc2_)
                              {
                                 §>!F§ = "circular_out";
                                 while(_loc1_ || _loc1_)
                                 {
                                    §=!!§ = "circular_in";
                                    if(!(_loc2_ && §4N§))
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop2;
                           }
                           continue loop4;
                        }
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private var §?_§:Vector.<§ X§>;
      
      private var §2W§:Boolean;
      
      private var §6,§:Boolean = true;
      
      public function §4N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§?_§ = new Vector.<§ X§>();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function get §!!L§() : §4N§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§-!U§);
            if(!(_loc2_ && §4N§))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr59:
                     §-!U§ = new §4N§();
                  }
               }
               return §-!U§;
            }
         }
         §§goto(addr59);
      }
      
      public function set §[!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§6,§ = param1;
         }
      }
      
      public function §8!4§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ X§ = null;
         var _loc1_:* = int(this.§?_§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?_§[_loc1_];
            if(_loc4_ || _loc3_)
            {
               if(_loc2_.§#Y§)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§?_§.splice(_loc1_,1);
                     addr98:
                     loop4:
                     while(true)
                     {
                        addr67:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr70:
                           addr72:
                           while(!_loc4_)
                           {
                              continue loop4;
                           }
                           continue loop4;
                        }
                     }
                     addr98:
                  }
                  §§goto(addr98);
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || _loc2_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr70);
                  §§goto(addr72);
               }
               continue;
            }
            §§goto(addr98);
         }
      }
      
      public function §5!N§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §3!$§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§3!Y§;
         (_loc6_ = new §3!Y§(param1,param2,param3,param4,param5)).§[!6§ = this.§6,§;
         if(_loc7_)
         {
            this.§?_§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §]!§(... rest) : §3!$§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§2^§ = null;
         var _loc3_:§%&§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc7_ && _loc2_))
            {
               _loc4_ = this.§?_§.indexOf(_loc2_);
               if(!_loc8_)
               {
                  continue;
               }
            }
            this.§?_§.splice(_loc4_,1);
         }
         _loc3_ = new §%&§(rest,true);
         if(!(_loc7_ && rest))
         {
            _loc3_.§[!6§ = this.§6,§;
            do
            {
               this.§?_§.push(_loc3_);
            }
            while(!_loc8_);
            
         }
         return _loc3_;
      }
      
      public function §4g§(... rest) : §3!$§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§2^§ = null;
         var _loc3_:§%&§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc8_ && _loc2_))
            {
               _loc4_ = this.§?_§.indexOf(_loc2_);
               if(_loc7_ || _loc2_)
               {
                  this.§?_§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §%&§(rest,false);
         if(!(_loc8_ && _loc2_))
         {
            _loc3_.§[!6§ = this.§6,§;
         }
         do
         {
            this.§?_§.push(_loc3_);
         }
         while(_loc8_);
         
         return _loc3_;
      }
      
      public function §[]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§2W§ = true;
         }
      }
      
      public function §>!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§2W§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§ X§ = null;
         if(!(_loc5_ && param1))
         {
            if(this.§2W§)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§?_§.length)
         {
            _loc3_ = false;
            if(_loc5_ && param1)
            {
               break;
            }
            (_loc4_ = this.§?_§[_loc2_]).update(param1);
            if(_loc6_ || param1)
            {
               if(_loc4_.isCompleted)
               {
                  loop6:
                  while(true)
                  {
                     this.§?_§.splice(_loc2_,1);
                     loop4:
                     while(true)
                     {
                        _loc4_.dispose();
                        addr95:
                        addr97:
                        while(!_loc6_)
                        {
                           continue loop6;
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           addr87:
                           addr91:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr97);
                        }
                     }
                  }
                  addr101:
               }
               while(true)
               {
                  _loc2_++;
                  if(_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr87);
                  §§goto(addr91);
               }
               continue;
            }
            §§goto(addr101);
         }
      }
   }
}
