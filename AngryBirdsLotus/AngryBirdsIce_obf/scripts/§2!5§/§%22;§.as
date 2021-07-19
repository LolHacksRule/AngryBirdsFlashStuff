package §2!5§
{
   public class §";§
   {
      
      public static const §#!;§:String = "linear";
      
      public static const §%[§:String = "sine_in";
      
      public static const §8R§:String = "sine_out";
      
      public static const §&w§:String = "quad_out";
      
      public static const §43§:String = "quad_in";
      
      public static const §`!>§:String = "bounce_out";
      
      public static const §2l§:String = "bounce_in";
      
      public static const §5!,§:String = "circular_out";
      
      public static const §5K§:String = "circular_in";
      
      private static var §2!D§:§";§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!;§ = "linear";
         }
         loop0:
         while(true)
         {
            §%[§ = "sine_in";
            while(true)
            {
               §8R§ = "sine_out";
               while(true)
               {
                  §&w§ = "quad_out";
                  if(!_loc2_)
                  {
                     break;
                  }
                  §43§ = "quad_in";
                  while(!_loc1_)
                  {
                     §`!>§ = "bounce_out";
                     continue loop0;
                     if(_loc2_ || §";§)
                     {
                        §5K§ = "circular_in";
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private var §]X§:Vector.<§=!$§>;
      
      private var §>2§:Boolean;
      
      private var §+?§:Boolean = true;
      
      public function §";§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§]X§ = new Vector.<§=!$§>();
         }
         do
         {
            super();
         }
         while(!(_loc2_ || this));
         
      }
      
      public static function get §[8§() : §";§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§2!D§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §2!D§ = new §";§();
                     addr49:
                     §§push(§2!D§);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public function set §1!+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§+?§ = param1;
         }
      }
      
      public function §1N§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=!$§ = null;
         var _loc1_:* = int(this.§]X§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]X§[_loc1_];
            if(_loc4_ || _loc3_)
            {
               if(_loc2_.§+&§)
               {
                  loop1:
                  while(true)
                  {
                     this.§]X§.splice(_loc1_,1);
                     addr103:
                     loop5:
                     while(true)
                     {
                        addr82:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr85:
                           addr94:
                           while(true)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || this)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr85);
                  §§goto(addr94);
               }
               continue;
            }
            §§goto(addr103);
         }
      }
      
      public function §6!$§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §?A§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§[!7§;
         (_loc6_ = new §[!7§(param1,param2,param3,param4,param5)).§1!+§ = this.§+?§;
         if(!_loc8_)
         {
            this.§]X§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §9!8§(... rest) : §?A§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§'n§ = null;
         var _loc3_:§2!?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§]X§.indexOf(_loc2_);
               if(_loc8_)
               {
                  this.§]X§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §2!?§(rest,true);
         if(!(_loc7_ && rest))
         {
            _loc3_.§1!+§ = this.§+?§;
            do
            {
               this.§]X§.push(_loc3_);
            }
            while(_loc7_);
            
         }
         return _loc3_;
      }
      
      public function §;<§(... rest) : §?A§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§'n§ = null;
         var _loc3_:§2!?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_)
            {
               _loc4_ = this.§]X§.indexOf(_loc2_);
               if(_loc7_ && this)
               {
                  continue;
               }
            }
            this.§]X§.splice(_loc4_,1);
         }
         _loc3_ = new §2!?§(rest,false);
         if(!(_loc7_ && _loc3_))
         {
            _loc3_.§1!+§ = this.§+?§;
         }
         do
         {
            this.§]X§.push(_loc3_);
         }
         while(_loc7_ && rest);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>2§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>2§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§=!$§ = null;
         if(!_loc5_)
         {
            if(this.§>2§)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         loop0:
         for(; _loc2_ < this.§]X§.length; if(true)
         {
            continue;
         },§§goto(addr88))
         {
            _loc3_ = false;
            if(!_loc6_)
            {
               break;
            }
            (_loc4_ = this.§]X§[_loc2_]).update(param1);
            if(_loc6_ || _loc2_)
            {
               if(_loc4_.isCompleted)
               {
                  if(_loc6_)
                  {
                     this.§]X§.splice(_loc2_,1);
                  }
                  while(true)
                  {
                     _loc4_.dispose();
                     addr100:
                     loop5:
                     while(true)
                     {
                        addr88:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           addr94:
                           addr96:
                           while(!_loc6_)
                           {
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                  }
                  addr111:
               }
               while(true)
               {
                  _loc2_++;
                  if(!(_loc5_ && param1))
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr94);
                  §§goto(addr96);
               }
               continue;
            }
            §§goto(addr100);
         }
      }
   }
}
