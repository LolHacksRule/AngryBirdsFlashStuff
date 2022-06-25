package §57§
{
   public class §,!b§
   {
      
      public static const §2!U§:String = "linear";
      
      public static const §4X§:String = "sine_in";
      
      public static const §7'§:String = "sine_out";
      
      public static const §4t§:String = "quad_out";
      
      public static const §5!b§:String = "quad_in";
      
      public static const §8!k§:String = "bounce_out";
      
      public static const §-7§:String = "bounce_in";
      
      public static const §8!V§:String = "circular_out";
      
      public static const §0!q§:String = "circular_in";
      
      private static var §[!W§:§,!b§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2!U§ = "linear";
            loop0:
            while(true)
            {
               §4X§ = "sine_in";
               loop1:
               while(true)
               {
                  §7'§ = "sine_out";
                  loop2:
                  while(true)
                  {
                     §4t§ = "quad_out";
                     loop3:
                     for(; !_loc2_; while(_loc1_ || _loc2_)
                     {
                        §8!V§ = "circular_out";
                        §§goto(addr63);
                        §§goto(addr34);
                     })
                     {
                        §5!b§ = "quad_in";
                        while(true)
                        {
                           §8!k§ = "bounce_out";
                           continue loop2;
                           addr63:
                           while(!(_loc2_ && _loc1_))
                           {
                              continue loop0;
                              §0!q§ = "circular_in";
                              if(_loc1_ || _loc2_)
                              {
                                 addr34:
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr41:
                                    if(_loc1_ || _loc2_)
                                    {
                                       return;
                                       addr48:
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §-7§ = "bounce_in";
            §§goto(addr82);
         }
         §§goto(addr48);
      }
      
      private var §8?§:Vector.<§3!S§>;
      
      private var § D§:Boolean;
      
      private var §+!p§:Boolean = true;
      
      public function §,!b§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8?§ = new Vector.<§3!S§>();
            do
            {
               super();
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public static function get §<d§() : §,!b§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§[!W§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr39:
                     §[!W§ = new §,!b§();
                  }
               }
               return §[!W§;
            }
         }
         §§goto(addr39);
      }
      
      public function set §^!K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+!p§ = param1;
         }
      }
      
      public function § if§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!S§ = null;
         var _loc1_:* = int(this.§8?§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8?§[_loc1_];
            if(_loc3_ || _loc2_)
            {
               if(_loc2_.§-3§)
               {
                  if(!_loc4_)
                  {
                     this.§8?§.splice(_loc1_,1);
                  }
                  loop1:
                  while(true)
                  {
                     addr81:
                     while(true)
                     {
                        _loc2_.dispose();
                        addr84:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_ || _loc1_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr84);
               }
               continue;
            }
            §§goto(addr86);
         }
      }
      
      public function §>a§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §4!Z§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§7?§;
         (_loc6_ = new §7?§(param1,param2,param3,param4,param5)).§^!K§ = this.§+!p§;
         if(!(_loc8_ && param1))
         {
            this.§8?§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §=!o§(... rest) : §4!Z§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§`!x§ = null;
         var _loc3_:§6!k§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§8?§.indexOf(_loc2_);
               if(_loc8_ || rest)
               {
                  this.§8?§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §6!k§(rest,true);
         if(_loc8_ || this)
         {
            _loc3_.§^!K§ = this.§+!p§;
         }
         do
         {
            this.§8?§.push(_loc3_);
         }
         while(!_loc8_);
         
         return _loc3_;
      }
      
      public function §?!5§(... rest) : §4!Z§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§`!x§ = null;
         var _loc3_:§6!k§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§8?§.indexOf(_loc2_);
               if(_loc8_)
               {
                  continue;
               }
            }
            this.§8?§.splice(_loc4_,1);
         }
         _loc3_ = new §6!k§(rest,false);
         if(!_loc8_)
         {
            _loc3_.§^!K§ = this.§+!p§;
         }
         do
         {
            this.§8?§.push(_loc3_);
         }
         while(_loc8_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§ D§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ D§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§3!S§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(this.§ D§)
            {
               if(_loc6_ || _loc2_)
               {
                  §§goto(addr39);
               }
            }
            var _loc2_:* = 0;
            while(_loc2_ < this.§8?§.length)
            {
               _loc3_ = false;
               if(!_loc6_)
               {
                  break;
               }
               (_loc4_ = this.§8?§[_loc2_]).update(param1);
               if(!(_loc5_ && param1))
               {
                  if(_loc4_.isCompleted)
                  {
                     if(!(_loc5_ && this))
                     {
                        addr131:
                        this.§8?§.splice(_loc2_,1);
                     }
                     loop1:
                     while(true)
                     {
                        _loc4_.dispose();
                        addr120:
                        while(true)
                        {
                           addr88:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr131);
            }
            return;
         }
         addr39:
      }
   }
}
