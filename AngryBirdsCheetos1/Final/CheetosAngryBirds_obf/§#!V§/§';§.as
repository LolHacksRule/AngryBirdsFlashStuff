package §#!V§
{
   public class §';§
   {
      
      public static const §!! §:String = "linear";
      
      public static const §88§:String = "sine_in";
      
      public static const § j§:String = "sine_out";
      
      public static const §3!P§:String = "quad_out";
      
      public static const §#P§:String = "quad_in";
      
      public static const §,!M§:String = "bounce_out";
      
      public static const §[d§:String = "bounce_in";
      
      public static const §+!=§:String = "circular_out";
      
      public static const §^!P§:String = "circular_in";
      
      private static var §#!'§:§';§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!! § = "linear";
         }
         loop0:
         while(true)
         {
            §88§ = "sine_in";
            while(true)
            {
               § j§ = "sine_out";
               loop2:
               for(; !(_loc2_ && _loc1_); if(_loc2_ && §';§)
               {
                  continue;
               },§§goto(addr74))
               {
                  §3!P§ = "quad_out";
                  while(true)
                  {
                     §#P§ = "quad_in";
                     loop4:
                     for(; _loc1_; if(_loc1_ || §';§)
                     {
                        continue loop2;
                     })
                     {
                        §,!M§ = "bounce_out";
                        loop5:
                        while(true)
                        {
                           §[d§ = "bounce_in";
                           loop6:
                           do
                           {
                              §+!=§ = "circular_out";
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr74:
                                 §^!P§ = "circular_in";
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue loop6;
                                 }
                              }
                              continue loop2;
                           }
                           while(!_loc1_);
                           
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private var §5s§:Vector.<§>!3§>;
      
      private var §=2§:Boolean;
      
      private var §^b§:Boolean = true;
      
      public function §';§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§5s§ = new Vector.<§>!3§>();
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public static function get §%!O§() : §';§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§#!'§);
            if(_loc1_ || §';§)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §#!'§ = new §';§();
                     addr63:
                     §§push(§#!'§);
                  }
               }
               §§goto(addr63);
            }
            return §§pop();
         }
         §§goto(addr63);
      }
      
      public function set §-l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^b§ = param1;
         }
      }
      
      public function § e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>!3§ = null;
         var _loc1_:* = int(this.§5s§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5s§[_loc1_];
            if(_loc4_)
            {
               if(_loc2_.§5J§)
               {
                  loop1:
                  while(true)
                  {
                     this.§5s§.splice(_loc1_,1);
                     loop2:
                     while(true)
                     {
                        addr67:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr70:
                           while(!_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && this))
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
               }
               continue;
            }
            §§goto(addr79);
         }
      }
      
      public function §set §(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §&!!§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§^P§;
         (_loc6_ = new §^P§(param1,param2,param3,param4,param5)).§-l§ = this.§^b§;
         if(_loc8_)
         {
            this.§5s§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §4!;§(... rest) : §&!!§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§[1§ = null;
         var _loc3_:§5!,§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_)
            {
               _loc4_ = this.§5s§.indexOf(_loc2_);
               if(!(_loc7_ && rest))
               {
                  this.§5s§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §5!,§(rest,true);
         if(!(_loc7_ && _loc2_))
         {
            _loc3_.§-l§ = this.§^b§;
            do
            {
               this.§5s§.push(_loc3_);
            }
            while(_loc7_);
            
         }
         return _loc3_;
      }
      
      public function §;!8§(... rest) : §&!!§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§[1§ = null;
         var _loc3_:§5!,§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§5s§.indexOf(_loc2_);
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
            }
            this.§5s§.splice(_loc4_,1);
         }
         _loc3_ = new §5!,§(rest,false);
         if(_loc7_)
         {
            _loc3_.§-l§ = this.§^b§;
         }
         do
         {
            this.§5s§.push(_loc3_);
         }
         while(_loc8_ && _loc2_);
         
         return _loc3_;
      }
      
      public function §3J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=2§ = true;
         }
      }
      
      public function §]!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=2§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§>!3§ = null;
         if(!(_loc5_ && _loc3_))
         {
            if(this.§=2§)
            {
               if(_loc6_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:* = 0;
            loop0:
            while(_loc2_ < this.§5s§.length)
            {
               _loc3_ = false;
               if(!(_loc6_ || this))
               {
                  break;
               }
               (_loc4_ = this.§5s§[_loc2_]).update(param1);
               if(!(_loc5_ && param1))
               {
                  if(_loc4_.isCompleted)
                  {
                     while(true)
                     {
                        this.§5s§.splice(_loc2_,1);
                        while(true)
                        {
                           _loc4_.dispose();
                           loop3:
                           while(true)
                           {
                              addr81:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 continue loop3;
                              }
                           }
                        }
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           _loc2_++;
                           if(!_loc5_)
                           {
                              while(false)
                              {
                                 §§goto(addr81);
                              }
                              continue loop0;
                              addr79:
                           }
                           §§goto(addr92);
                        }
                        addr75:
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr79);
            }
            return;
         }
         addr34:
      }
   }
}
