package §_-0AB§
{
   public class §_-cx§
   {
      
      public static const §_-pt§:String = "linear";
      
      public static const §_-0c§:String = "sine_in";
      
      public static const §_-x-§:String = "sine_out";
      
      public static const §_-037§:String = "quad_out";
      
      public static const §_-aZ§:String = "quad_in";
      
      public static const §_-Kl§:String = "bounce_out";
      
      public static const §_-bI§:String = "bounce_in";
      
      public static const §_-61§:String = "circular_out";
      
      public static const §_-0-U§:String = "circular_in";
      
      private static var §_-es§:§_-cx§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-cx§))
         {
            §_-pt§ = "linear";
            while(true)
            {
               §_-0c§ = "sine_in";
               loop1:
               for(; !_loc2_; while(!(_loc2_ && §_-cx§))
               {
                  §_-aZ§ = "quad_in";
                  §§goto(addr87);
               })
               {
                  §_-x-§ = "sine_out";
                  while(true)
                  {
                     §_-037§ = "quad_out";
                     continue loop1;
                     addr87:
                     loop4:
                     while(!(_loc2_ && §_-cx§))
                     {
                        §_-Kl§ = "bounce_out";
                        loop5:
                        while(true)
                        {
                           §_-bI§ = "bounce_in";
                           loop6:
                           while(!_loc2_)
                           {
                              §_-61§ = "circular_out";
                              while(true)
                              {
                                 if(_loc1_ || §_-cx§)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                                 addr70:
                                 §_-0-U§ = "circular_in";
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop5;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      private var §_-08b§:Vector.<§_-IP§>;
      
      private var §_-A5§:Boolean;
      
      private var §_-i-§:Boolean = true;
      
      public function §_-cx§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-08b§ = new Vector.<§_-IP§>();
         }
         do
         {
            super();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public static function get §_-3S§() : §_-cx§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§_-es§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §_-es§ = new §_-cx§();
                     addr29:
                     §§push(§_-es§);
                  }
               }
               §§goto(addr29);
            }
            return §§pop();
         }
         §§goto(addr29);
      }
      
      public function set §_-JH§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-i-§ = param1;
         }
      }
      
      public function §_-Pm§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-IP§ = null;
         var _loc1_:* = int(this.§_-08b§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-08b§[_loc1_];
            if(_loc3_ || _loc3_)
            {
               if(_loc2_.§_-04E§)
               {
                  loop1:
                  while(true)
                  {
                     this.§_-08b§.splice(_loc1_,1);
                     loop2:
                     while(true)
                     {
                        addr76:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr79:
                           while(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     while(false)
                     {
                        §§goto(addr76);
                     }
                     continue loop0;
                     addr74:
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr74);
         }
      }
      
      public function §_-Wf§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §_-dd§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§_-3w§;
         (_loc6_ = new §_-3w§(param1,param2,param3,param4,param5)).§_-JH§ = this.§_-i-§;
         if(_loc8_ || param1)
         {
            this.§_-08b§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §_-Tc§(... rest) : §_-dd§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§_-Ok§ = null;
         var _loc3_:§_-06r§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§_-08b§.indexOf(_loc2_);
               if(!(_loc7_ || this))
               {
                  continue;
               }
            }
            this.§_-08b§.splice(_loc4_,1);
         }
         _loc3_ = new §_-06r§(rest,true);
         if(!(_loc8_ && _loc3_))
         {
            _loc3_.§_-JH§ = this.§_-i-§;
            do
            {
               this.§_-08b§.push(_loc3_);
            }
            while(_loc8_);
            
         }
         return _loc3_;
      }
      
      public function §_-Vy§(... rest) : §_-dd§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§_-Ok§ = null;
         var _loc3_:§_-06r§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§_-08b§.indexOf(_loc2_);
               if(!(_loc7_ || this))
               {
                  continue;
               }
            }
            this.§_-08b§.splice(_loc4_,1);
         }
         _loc3_ = new §_-06r§(rest,false);
         if(_loc7_)
         {
            _loc3_.§_-JH§ = this.§_-i-§;
         }
         do
         {
            this.§_-08b§.push(_loc3_);
         }
         while(_loc8_ && _loc2_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-A5§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-A5§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§_-IP§ = null;
         if(!(_loc5_ && this))
         {
            if(this.§_-A5§)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§_-08b§.length)
         {
            _loc3_ = false;
            if(_loc5_ && param1)
            {
               break;
            }
            (_loc4_ = this.§_-08b§[_loc2_]).update(param1);
            if(_loc6_ || param1)
            {
               if(_loc4_.isCompleted)
               {
                  if(!_loc5_)
                  {
                     this.§_-08b§.splice(_loc2_,1);
                  }
                  while(true)
                  {
                     _loc4_.dispose();
                     loop2:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           addr86:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              addr102:
                              addr104:
                              while(!_loc6_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc2_++;
                  if(!(_loc5_ && param1))
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr102);
                  §§goto(addr104);
               }
               continue;
            }
            §§goto(addr110);
         }
      }
   }
}
