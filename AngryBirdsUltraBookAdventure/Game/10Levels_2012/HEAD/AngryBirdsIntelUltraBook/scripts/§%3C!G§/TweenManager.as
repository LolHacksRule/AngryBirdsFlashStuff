package §<!G§
{
   public class TweenManager
   {
      
      public static const §#R§:String = "linear";
      
      public static const §@6§:String = "sine_in";
      
      public static const §+v§:String = "sine_out";
      
      public static const §[!0§:String = "quad_out";
      
      public static const §3!]§:String = "quad_in";
      
      public static const §4!-§:String = "bounce_out";
      
      public static const §0]§:String = "bounce_in";
      
      public static const §<M§:String = "circular_out";
      
      public static const §?!X§:String = "circular_in";
      
      private static var sInstance:TweenManager;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && TweenManager))
         {
            §#R§ = "linear";
            while(true)
            {
               §@6§ = "sine_in";
               loop1:
               while(true)
               {
                  §+v§ = "sine_out";
                  while(true)
                  {
                     §[!0§ = "quad_out";
                     loop3:
                     while(true)
                     {
                        §3!]§ = "quad_in";
                        while(true)
                        {
                           §4!-§ = "bounce_out";
                           continue loop3;
                           addr76:
                           loop6:
                           while(_loc2_ || TweenManager)
                           {
                              §<M§ = "circular_out";
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    addr64:
                                    if(_loc1_ && TweenManager)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop3;
                           }
                        }
                     }
                     if(!_loc1_)
                     {
                        continue loop1;
                     }
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               return;
               addr47:
            }
         }
         §§goto(addr47);
      }
      
      private var §@!=§:Vector.<§;K§>;
      
      private var §"^§:Boolean;
      
      private var §9i§:Boolean = true;
      
      public function TweenManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@!=§ = new Vector.<§;K§>();
            do
            {
               super();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public static function get §&!'§() : TweenManager
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(sInstance);
            if(_loc1_ || TweenManager)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     sInstance = new TweenManager();
                     addr50:
                     §§push(sInstance);
                  }
               }
               §§goto(addr50);
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public function set §+K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9i§ = param1;
         }
      }
      
      public function §%T§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;K§ = null;
         var _loc1_:* = int(this.§@!=§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!=§[_loc1_];
            if(_loc3_ || this)
            {
               if(_loc2_.§'H§)
               {
                  while(true)
                  {
                     this.§@!=§.splice(_loc1_,1);
                     addr98:
                     while(true)
                     {
                        addr84:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr88:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr98);
               }
               continue;
            }
            §§goto(addr88);
         }
      }
      
      public function §3L§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §9h§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:SimpleTween = new SimpleTween(param1,param2,param3,param4,param5);
         if(_loc7_ || this)
         {
            _loc6_.§+K§ = this.§9i§;
            do
            {
               this.§@!=§.push(_loc6_);
            }
            while(_loc8_ && this);
            
         }
         return _loc6_;
      }
      
      public function §+!^§(... rest) : §9h§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§'=§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || this)
            {
               _loc4_ = this.§@!=§.indexOf(_loc2_);
               if(!(_loc8_ || rest))
               {
                  continue;
               }
            }
            this.§@!=§.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,true);
         if(!_loc7_)
         {
            _loc3_.§+K§ = this.§9i§;
            do
            {
               this.§@!=§.push(_loc3_);
            }
            while(_loc7_);
            
         }
         return _loc3_;
      }
      
      public function §[!1§(... rest) : §9h§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§'=§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || rest)
            {
               _loc4_ = this.§@!=§.indexOf(_loc2_);
               if(!_loc7_)
               {
                  this.§@!=§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new SimpleTweenContainer(rest,false);
         if(!(_loc7_ && rest))
         {
            _loc3_.§+K§ = this.§9i§;
         }
         do
         {
            this.§@!=§.push(_loc3_);
         }
         while(_loc7_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"^§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"^§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = false;
         var _loc4_:§;K§ = null;
         if(_loc5_ || _loc2_)
         {
            if(this.§"^§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < this.§@!=§.length)
         {
            §§push(false);
            if(!(_loc6_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
            }
            _loc3_ = §§pop();
            if(!(_loc5_ || _loc3_))
            {
               break;
            }
            _loc4_ = this.§@!=§[_loc2_];
            if(_loc5_)
            {
               _loc4_.update(param1);
               while(true)
               {
                  if(_loc4_.isCompleted)
                  {
                     loop2:
                     while(true)
                     {
                        this.§@!=§.splice(_loc2_,1);
                        addr170:
                        while(true)
                        {
                           _loc4_.dispose();
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§goto(addr86);
                     }
                     §§goto(addr101);
                  }
                  continue loop0;
               }
            }
            §§goto(addr137);
         }
      }
   }
}
